module.exports = {
  apps: [
    {
      name: 'xProfiler进程',
      script: 'start.js',
      exec_mode: 'fork',
      cwd: '/data/www/easy-monitor/xprofiler-console',
    },
    {
      name: 'xtransitManager进程',
      script: 'start.js',
      exec_mode: 'fork',
      cwd: '/data/www/easy-monitor/xtransit-manager',
    },
    {
      name: 'xtransitServer进程',
      script: 'start.js',
      exec_mode: 'fork',
      cwd: '/data/www/easy-monitor/xtransit-server',
    },
  ],
};