import org.apache.kafka.streams.KafkaStreams;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class StateListener implements KafkaStreams.StateListener {
    private static Logger logger = LogManager.getLogger(StateListener.class);

    @Override
    public void onChange(KafkaStreams.State newState, KafkaStreams.State oldState) {
        logger.error(String.format("State: %s --> %s", oldState.toString(), newState.toString()));
    }
}
