package q17;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.websocket.server.ServerEndpoint;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;

@ServerEndpoint("/chat")
public class Server {
    @OnOpen
    public void onOpen(Session session) {
        sessions.add(session);
        Map<String, List<String>> queryParams = session.getRequestParameterMap();
        String userName = queryParams.get("username").get(0);
        if (usernames.containsValue(userName)) {
            userName += session.getId();
        }
        usernames.put(session, userName);
        broadcast(session, "[Server]: " + userName + " connected");
    }

    @OnMessage
    public void onMessage(String message, Session session) {
        broadcast(session, "[" + usernames.get(session) + "]: " + message);
    }

    @OnClose
    public void onClose(Session session) {
        String username = usernames.get(session);
        sessions.remove(session);
        usernames.remove(session);
        broadcast(session, "[Server]: " + username + " disconnected");
    }

    @OnError
    public void onError(Session session, Throwable throwable) {
        throwable.printStackTrace(System.err);
    }

    private boolean broadcast(Session session, String message) {
        return sessions.stream()
                .parallel()
                .map((s) -> {
                    if (s == session) {
                        return true;
                    }
                    try {
                        s.getBasicRemote().sendText(message);
                        return true;
                    } catch (Exception e) {
                        return false;
                    }
                })
                .allMatch(status -> status);
    }

    private static final List<Session> sessions = new ArrayList<>();
    private static final Map<Session, String> usernames = new HashMap<>();
}