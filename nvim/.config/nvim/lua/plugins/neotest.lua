return {
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        "neotest-plenary",
        "neotest-rspec",
        "neotest-rust",
        "neotest-python",
        "neotest-go",
        "neotest-vitest",
      },
    },
  },
}
