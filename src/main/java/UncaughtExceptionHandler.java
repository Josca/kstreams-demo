import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class UncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static Logger logger = LogManager.getLogger(UncaughtExceptionHandler.class);

    @Override
    public void uncaughtException(Thread thread, Throwable throwable) {
        logger.error(String.format("Exception: %s --> %s", thread.toString(), throwable.toString()));
    }
}
