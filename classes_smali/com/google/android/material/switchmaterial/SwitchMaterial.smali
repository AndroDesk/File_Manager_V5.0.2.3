.class public Lcom/google/android/material/switchmaterial/SwitchMaterial;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SwitchMaterial.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field private final elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

.field private materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

.field private materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

.field private useMaterialThemeColors:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_Switch:I

    .line 3
    sput v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->DEF_STYLE_RES:I

    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [[I

    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v2, v1, [I

    .line 11
    fill-array-data v2, :array_2a

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v0, v3

    .line 17
    new-array v2, v1, [I

    .line 19
    fill-array-data v2, :array_32

    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v2, v0, v3

    .line 25
    new-array v2, v1, [I

    .line 27
    fill-array-data v2, :array_3a

    .line 30
    aput-object v2, v0, v1

    .line 32
    new-array v1, v1, [I

    .line 34
    fill-array-data v1, :array_42

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 40
    sput-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    .line 42
    return-void

    .line 43
    :array_2a
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 51
    :array_32
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    .line 59
    :array_3a
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    .line 67
    :array_42
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .line 3
    sget v4, Lcom/google/android/material/switchmaterial/SwitchMaterial;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    new-instance p1, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    invoke-direct {p1, v0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 6
    sget-object v2, Lcom/google/android/material/R$styleable;->SwitchMaterial:[I

    const/4 p1, 0x0

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 8
    sget p3, Lcom/google/android/material/R$styleable;->SwitchMaterial_useMaterialThemeColors:I

    .line 9
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    .line 3
    if-nez v0, :cond_52

    .line 5
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 7
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 10
    move-result v0

    .line 11
    sget v1, Lcom/google/android/material/R$attr;->colorControlActivated:I

    .line 13
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object v2

    .line 21
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_switch_thumb_elevation:I

    .line 23
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 29
    invoke-virtual {v3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeElevationOverlayEnabled()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_27

    .line 35
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    .line 38
    move-result v3

    .line 39
    add-float/2addr v2, v3

    .line 40
    :cond_27
    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    .line 42
    invoke-virtual {v3, v0, v2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    .line 45
    move-result v2

    .line 46
    sget-object v3, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    .line 48
    array-length v4, v3

    .line 49
    new-array v4, v4, [I

    .line 51
    const/4 v5, 0x0

    .line 52
    const/high16 v6, 0x3f800000  # 1.0f

    .line 54
    invoke-static {v0, v1, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    .line 57
    move-result v6

    .line 58
    aput v6, v4, v5

    .line 60
    const/4 v5, 0x1

    .line 61
    aput v2, v4, v5

    .line 63
    const/4 v5, 0x2

    .line 64
    const v6, 0x3ec28f5c  # 0.38f

    .line 67
    invoke-static {v0, v1, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    .line 70
    move-result v0

    .line 71
    aput v0, v4, v5

    .line 73
    const/4 v0, 0x3

    .line 74
    aput v2, v4, v0

    .line 76
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 78
    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 81
    iput-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    .line 83
    :cond_52
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    .line 85
    return-object v0
.end method

.method private getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    .line 3
    if-nez v0, :cond_47

    .line 5
    sget-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    .line 7
    array-length v1, v0

    .line 8
    new-array v1, v1, [I

    .line 10
    sget v2, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 12
    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 15
    move-result v2

    .line 16
    sget v3, Lcom/google/android/material/R$attr;->colorControlActivated:I

    .line 18
    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 21
    move-result v3

    .line 22
    sget v4, Lcom/google/android/material/R$attr;->colorOnSurface:I

    .line 24
    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    const v6, 0x3f0a3d71  # 0.54f

    .line 32
    invoke-static {v2, v3, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    .line 35
    move-result v6

    .line 36
    aput v6, v1, v5

    .line 38
    const/4 v5, 0x1

    .line 39
    const v6, 0x3ea3d70a  # 0.32f

    .line 42
    invoke-static {v2, v4, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    .line 45
    move-result v6

    .line 46
    aput v6, v1, v5

    .line 48
    const/4 v5, 0x2

    .line 49
    const v6, 0x3df5c28f  # 0.12f

    .line 52
    invoke-static {v2, v3, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    .line 55
    move-result v3

    .line 56
    aput v3, v1, v5

    .line 58
    const/4 v3, 0x3

    .line 59
    invoke-static {v2, v4, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    .line 62
    move-result v2

    .line 63
    aput v2, v1, v3

    .line 65
    new-instance v2, Landroid/content/res/ColorStateList;

    .line 67
    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 70
    iput-object v2, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    .line 72
    :cond_47
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    .line 74
    return-object v0
.end method


# virtual methods
.method public isUseMaterialThemeColors()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 6
    if-eqz v0, :cond_14

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbTintList()Landroid/content/res/ColorStateList;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_14

    .line 14
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 21
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 23
    if-eqz v0, :cond_25

    .line 25
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTrackTintList()Landroid/content/res/ColorStateList;

    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_25

    .line 31
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    :cond_25
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    .line 3
    if-eqz p1, :cond_13

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 24
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    :goto_1a
    return-void
.end method
