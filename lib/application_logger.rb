class ApplicationLogger
  def info(message)
    logger.info(message)
  end

  def logger
    @logger ||= Logger.new(STDOUT).tap do |logger|
      logger.formatter = proc { |severity, _datetime, _progname, msg| "#{severity} #{msg}\n" }
    end
  end
end
