{ config, pkgs, ... }:

{
  services.auto-cpufreq.enable = true;
  services.power-profiles-daemon.enable = true;
  services.asusd = {
    enable = true;
    enableUserService = true;
  };
  services.supergfxd = {
    enable = true;
  };


  powerManagement = {
    enable = true;
    powertop.enable = true;
    cpufreq.min = 1000000;
    cpufreq.max = 1800000;
    cpuFreqGovernor = "schedutil";
  };


  # services.tlp = {
  #    enable = true;
  #    settings = {
  #       CPU_BOOST_ON_BAT = 0;
  #       START_CHARGE_THRESH_BAT0 = 60;
  #       STOP_CHARGE_THRESH_BAT0 = 80;
  #       RUNTIME_PM_ON_BAT = "auto";
  #       CPU_SCALING_GOVERNOR_ON_AC = "schedutil";
  #       CPU_SCALING_GOVERNOR_ON_BAT = "schedutil";

  #       # Refer to the output of tlp-stat -p to determine the active scaling driver and available governors.
  #       # https://linrunner.de/tlp/settings/processor.html#cpu-scaling-min-max-freq-on-ac-bat
  #       CPU_SCALING_MIN_FREQ_ON_AC = 1000000;
  #       CPU_SCALING_MAX_FREQ_ON_AC = 1600000;
  #       CPU_SCALING_MIN_FREQ_ON_BAT = 1600000;
  #       CPU_SCALING_MAX_FREQ_ON_BAT = 1800000;
  #    };
  #  };
}
