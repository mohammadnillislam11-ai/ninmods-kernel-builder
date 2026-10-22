.class public final Lnin/app/core/AppColors;
.super Ljava/lang/Object;
.source "AppColors.java"


# static fields
.field public static final ACCENT:I

.field public static final BLACK:I

.field public static final BTN_CLOSE_END:I

.field public static final BTN_CLOSE_START:I

.field public static final BTN_HIDE_BG:I

.field public static final BTN_SAFE_END:I

.field public static final BTN_SAFE_START:I

.field public static final CARD_BACKGROUND:I

.field public static final CYAN_BRIGHT:I

.field public static final CYAN_GLOW:I

.field public static final CYAN_LIGHT:I

.field public static final CYAN_STROKE:I

.field public static final DARK_BACKGROUND:I

.field public static final GEAR_BG:I

.field public static final MAGENTA_BTN_END:I

.field public static final MAGENTA_BTN_START:I

.field public static final MAGENTA_CARD:I

.field public static final MAGENTA_CARD_BORDER:I

.field public static final MAGENTA_CHIP:I

.field public static final MAGENTA_DARK:I

.field public static final MAGENTA_GLOW:I

.field public static final MAGENTA_ITEM_ACTIVE:I

.field public static final MAGENTA_LIGHT:I

.field public static final MAGENTA_PRIMARY:I

.field public static final MAGENTA_SCREEN_BG:I

.field public static final MAGENTA_SIDEBAR_HEADER:I

.field public static final MAGENTA_SURFACE:I

.field public static final MAGENTA_TEXT_DIM:I

.field public static final MODE_BTN_END:I

.field public static final MODE_BTN_START:I

.field public static final MODE_CARD_BORDER:I

.field public static final MODE_SCREEN_BG:I

.field public static final MODE_SECURITY_HINT:I

.field public static final MODE_SUBTITLE_TEXT:I

.field public static final MODE_TAG_TEXT:I

.field public static final ONLINE_GREEN:I

.field public static final PANEL_BACKGROUND:I

.field public static final PANEL_HEADER_END:I

.field public static final PANEL_HEADER_START:I

.field public static final PARTICLE_GLOW_1:I

.field public static final PARTICLE_GLOW_2:I

.field public static final PRIMARY:I

.field public static final PRIMARY_VARIANT:I

.field public static final SIDEBAR_GLOW_END:I

.field public static final SIDEBAR_GLOW_START:I

.field public static final SNOW_PARTICLE:I

.field public static final STATUS_BADGE_BG:I

.field public static final STATUS_BADGE_GREEN:I

.field public static final SWITCH_BG_DARK:I

.field public static final SWITCH_INACTIVE_TRACK:I

.field public static final SWITCH_THUMB_OFF:I

.field public static final SWITCH_THUMB_ON:I

.field public static final SWITCH_TRACK_OFF:I

.field public static final SWITCH_TRACK_ON:I

.field public static final TAB_SELECTED_BG:I

.field public static final TAB_UNSELECTED_BG:I

.field public static final TEXT_CLOSE:I

.field public static final TEXT_DIM:I

.field public static final TEXT_HIDE_BTN:I

.field public static final TEXT_PRIMARY:I

.field public static final TEXT_SAFE_MODE:I

.field public static final TEXT_SELLER:I

.field public static final TEXT_SUBTITLE:I

.field public static final TEXT_TITLE:I

.field public static final TEXT_WHITE:I

.field public static final TITLE_BAR_END:I

.field public static final TITLE_BAR_START:I

.field public static final WHITE:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    const-string v0, "#E637E6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnin/app/core/AppColors;->PRIMARY:I

    .line 15
    const-string v1, "#F76BF7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sput v2, Lnin/app/core/AppColors;->ACCENT:I

    .line 16
    const-string v2, "#A81FA8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnin/app/core/AppColors;->PRIMARY_VARIANT:I

    .line 17
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnin/app/core/AppColors;->CYAN_BRIGHT:I

    .line 18
    const-string v3, "#D936D9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sput v3, Lnin/app/core/AppColors;->CYAN_STROKE:I

    .line 19
    const-string v3, "#FF55FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->CYAN_GLOW:I

    .line 20
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->CYAN_LIGHT:I

    .line 21
    const-string v4, "#6CF6A8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->ONLINE_GREEN:I

    .line 24
    const-string v4, "#E60B0312"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->DARK_BACKGROUND:I

    .line 25
    const-string v4, "#F21C0A29"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->CARD_BACKGROUND:I

    .line 26
    const-string v4, "#EE12051C"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->PANEL_BACKGROUND:I

    .line 27
    const-string v4, "#2B0E38"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->PANEL_HEADER_START:I

    .line 28
    const-string v4, "#1B0824"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->PANEL_HEADER_END:I

    .line 29
    const-string v4, "#521A6B"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->TAB_SELECTED_BG:I

    .line 30
    const-string v4, "#CC1B0824"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->TAB_UNSELECTED_BG:I

    .line 31
    const-string v4, "#3B134D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->TITLE_BAR_START:I

    .line 32
    const-string v4, "#260B33"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->TITLE_BAR_END:I

    .line 33
    const-string v4, "#361147"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->BTN_SAFE_START:I

    .line 34
    const-string v4, "#4D1866"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->BTN_SAFE_END:I

    .line 35
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->BTN_CLOSE_START:I

    .line 36
    const-string v4, "#9E1B9E"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->BTN_CLOSE_END:I

    .line 37
    const-string v4, "#1E0729"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->BTN_HIDE_BG:I

    .line 38
    const-string v4, "#2E0D3D"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->GEAR_BG:I

    .line 39
    const-string v4, "#1B0626"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->SIDEBAR_GLOW_START:I

    .line 40
    const-string v4, "#380F4F"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->SIDEBAR_GLOW_END:I

    .line 43
    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->TEXT_WHITE:I

    .line 44
    const-string v5, "#FCEEFC"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->TEXT_PRIMARY:I

    .line 45
    const-string v5, "#FBEBFB"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->TEXT_TITLE:I

    .line 46
    const-string v5, "#F5D6F5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->TEXT_SUBTITLE:I

    .line 47
    const-string v5, "#F2B6F2"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->TEXT_SAFE_MODE:I

    .line 48
    const-string v5, "#F5C2F5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->TEXT_SELLER:I

    .line 49
    const-string v5, "#D99ED9"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->TEXT_DIM:I

    .line 50
    const-string v5, "#FCE8FC"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->TEXT_CLOSE:I

    .line 53
    const-string v5, "#C7D1FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->SNOW_PARTICLE:I

    .line 54
    const-string v5, "#00F2FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->PARTICLE_GLOW_1:I

    .line 55
    const-string v5, "#7000FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->PARTICLE_GLOW_2:I

    .line 58
    const-string v5, "#10172A"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->MODE_SCREEN_BG:I

    .line 59
    const-string v5, "#5468F5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->MODE_BTN_START:I

    .line 60
    const-string v5, "#5A6CF1"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->MODE_BTN_END:I

    .line 61
    const-string v5, "#E9EEFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->MODE_TAG_TEXT:I

    .line 62
    const-string v5, "#DCE3FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->MODE_SUBTITLE_TEXT:I

    .line 63
    const-string v5, "#1F2A44"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->MODE_SECURITY_HINT:I

    .line 64
    const-string v5, "#1A5A6CF1"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->MODE_CARD_BORDER:I

    .line 67
    const-string v5, "#000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->BLACK:I

    .line 68
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->WHITE:I

    .line 69
    const-string v5, "#1A1D2E"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->SWITCH_BG_DARK:I

    .line 70
    const-string v5, "#444A66"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->SWITCH_INACTIVE_TRACK:I

    .line 71
    const-string v5, "#BEEEFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->TEXT_HIDE_BTN:I

    .line 72
    const-string v5, "#16D8FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->SWITCH_TRACK_ON:I

    .line 73
    const-string v5, "#2C3A4A"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sput v5, Lnin/app/core/AppColors;->SWITCH_TRACK_OFF:I

    .line 74
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->SWITCH_THUMB_ON:I

    .line 75
    const-string v4, "#F4FBFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->SWITCH_THUMB_OFF:I

    .line 78
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Lnin/app/core/AppColors;->MAGENTA_PRIMARY:I

    .line 79
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnin/app/core/AppColors;->MAGENTA_LIGHT:I

    .line 80
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnin/app/core/AppColors;->MAGENTA_DARK:I

    .line 81
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnin/app/core/AppColors;->MAGENTA_GLOW:I

    .line 82
    const-string v1, "#0B0411"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnin/app/core/AppColors;->MAGENTA_SCREEN_BG:I

    .line 83
    const-string v1, "#2BF76BF7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sput v2, Lnin/app/core/AppColors;->MAGENTA_SURFACE:I

    .line 84
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnin/app/core/AppColors;->MAGENTA_CARD:I

    .line 85
    const-string v1, "#44F76BF7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnin/app/core/AppColors;->MAGENTA_CARD_BORDER:I

    .line 86
    const-string v1, "#32F76BF7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnin/app/core/AppColors;->MAGENTA_CHIP:I

    .line 87
    const-string v1, "#E2BDE8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lnin/app/core/AppColors;->MAGENTA_TEXT_DIM:I

    .line 88
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnin/app/core/AppColors;->MAGENTA_BTN_START:I

    .line 89
    const-string v0, "#961A96"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnin/app/core/AppColors;->MAGENTA_BTN_END:I

    .line 90
    const-string v0, "#1B092B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnin/app/core/AppColors;->MAGENTA_SIDEBAR_HEADER:I

    .line 91
    const-string v0, "#3D134F"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnin/app/core/AppColors;->MAGENTA_ITEM_ACTIVE:I

    .line 92
    const-string v0, "#22C55E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnin/app/core/AppColors;->STATUS_BADGE_GREEN:I

    .line 93
    const-string v0, "#2022C55E"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lnin/app/core/AppColors;->STATUS_BADGE_BG:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorResId"    # I
    .param p2, "defaultColor"    # I

    .line 100
    if-nez p0, :cond_0

    return p2

    .line 102
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ignored":Ljava/lang/Exception;
    return p2
.end method

.method public static withAlpha(II)I
    .locals 2
    .param p0, "color"    # I
    .param p1, "alpha255"    # I

    .line 96
    const v0, 0xffffff

    and-int/2addr v0, p0

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
