return {
  "mfussenegger/nvim-jdtls",
  ft = "java",
  config = function()
    local jdtls = require("jdtls")
    local mason_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
    
    local config = {
      cmd = {
        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=ALL",
        "-Xms1g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens", "java.base/java.util=ALL-UNNAMED",
        "--add-opens", "java.base/java.lang=ALL-UNNAMED",
        "-javaagent:" .. mason_path .. "/lombok.jar",
        "-jar", mason_path .. "/plugins/org.eclipse.equinox.launcher_1.7.100.v20251111-0406.jar",
        "-configuration", mason_path .. "/config_mac",
        "-data", vim.fn.expand("~/.cache/jdtls-workspace"),
      },
      root_dir = jdtls.setup.find_root({".git", "mvnw", "gradlew", "pom.xml", "build.gradle"}),
      settings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-1.8",
                path = "/Users/andrez.segovia/.sdkman/candidates/java/8.0.422-amzn",
              },
              {
                name = "JavaSE-11",
                path = "/Users/andrez.segovia/.sdkman/candidates/java/11.0.13.8.1-amzn",
              },
              {
                name = "JavaSE-17",
                path = "/Users/andrez.segovia/.sdkman/candidates/java/17.0.11-amzn",
              },
            },
          },
        },
      },
    }
    
    jdtls.start_or_attach(config)
  end,
}
