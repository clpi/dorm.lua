local e = require("vim.lsp.health")
local sd = require("plenary.scandir")
local M = {
  icons = {
    abc = "  ",
    array = "  ",
    arrowReturn = "  ",
    bigCircle = "  ",
    bigUnfilledCircle = "  ",
    bomb = "  ",
    bookMark = "  ",
    boolean = "  ",
    box = " 󰅫 ",
    buffer = "  ",
    bullets = { "◉", "○", "✸", "✿" },
    bug = "  ",
    quote = "  ",
    quote_gutter = "┃",
    calculator = "  ",
    calendar = "  ",
    caretRight = "",
    checkSquare = "  ",
    codeium = "",
    exit = " 󰗼 ",
    chevronDown = "",
    chevronRight = "",
    circle = "  ",
    class = "  ",
    close = "  ",
    code = "  ",
    cog = "  ",
    color = "  ",
    comment = "  ",
    constant = "  ",
    constructor = "  ",
    container = "  ",
    console = " 󰞷 ",
    consoleDebug = "  ",
    cubeTree = "  ",
    dashboard = "  ",
    database = "  ",
    enum = "  ",
    enumMember = "  ",
    error = "  ",
    errorOutline = "  ",
    errorSlash = " ﰸ ",
    event = "  ",
    field = "  ",
    file = "  ",
    fileBg = "  ",
    fileCopy = "  ",
    fileCutCorner = "  ",
    fileNoBg = "  ",
    fileNoLines = "  ",
    fileNoLinesBg = "  ",
    fileRecent = "  ",
    fire = "  ",
    folder = "  ",
    folderNoBg = "  ",
    folderOpen = "  ",
    folderOpen2 = " 󰉖 ",
    folderOpenNoBg = "  ",
    forbidden = " 󰍛 ",
    func = "  ",
    gear = "  ",
    gears = "  ",
    git = "",
    gitAdd = " ",
    gitChange = "󰏬 ",
    gitRemove = " ",
    hexCutOut = "  ",
    history = "  ",
    hook = " ﯠ ",
    info = "  ",
    infoOutline = "  ",
    interface = "  ",
    key = "  ",
    keyword = "  ",
    light = "  ",
    lightbulb = "  ",
    lightbulbOutline = "  ",
    list = "  ",
    lock = "  ",
    m = " m ",
    method = "  ",
    module = "  ",
    newFile = "  ",
    note = " 󰎚 ",
    number = "  ",
    numbers = "  ",
    object = "  ",
    operator = "  ",
    package = " 󰏓 ",
    packageUp = " 󰏕 ",
    packageDown = " 󰏔 ",
    paint = "  ",
    paragraph = " 󰉢 ",
    pencil = "  ",
    pie = "  ",
    pin = " 󰐃 ",
    project = "  ",
    property = "  ",
    questionCircle = "  ",
    reference = "  ",
    ribbon = " 󰑠 ",
    robot = " 󰚩 ",
    scissors = "  ",
    scope = "  ",
    search = "  ",
    settings = "  ",
    signIn = "  ",
    snippet = "  ",
    sort = "  ",
    spell = " 暈",
    squirrel = "  ",
    stack = "  ",
    string = "  ",
    struct = "  ",
    table = "  ",
    tag = "  ",
    telescope = "  ",
    terminal = "  ",
    text = "  ",
    threeDots = " 󰇘 ",
    threeDotsBoxed = "  ",
    timer = "  ",
    trash = "  ",
    tree = "  ",
    treeDiagram = " 󰙅 ",
    typeParameter = "  ",
    unit = "  ",
    up_hexagon = " 󰋘 ",
    update = " 󰊳 ",
    value = "  ",
    variable = "  ",
    warningCircle = "  ",
    vim = "  ",
    warningTriangle = "  ",
    warningTriangleNoBg = "  ",
    watch = "  ",
    word = "  ",
    wrench = "  ",
    fillBox = " 󰄮 ",
    outlineBox = " 󰄱 ",
    selectCaret = " ❯ ",
    copilotSleep = "  ",
    copilotEnabled = "  ",
    copilotDisabled = "  ",
    copilotWarning = "  ",
    copilotUnknown = "  ",
  },
}

M.hl = {
  bullet_highlights = {
    "@text.title.1.marker.markdown",
    "@text.title.2.marker.markdown",
    "@text.title.3.marker.markdown",
    "@text.title.4.marker.markdown",
    "@text.title.5.marker.markdown",
    "@text.title.6.marker.markdown",
  },
}

return M
