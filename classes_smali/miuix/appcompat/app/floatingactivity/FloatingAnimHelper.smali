.class public Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;
.super Ljava/lang/Object;
.source "FloatingAnimHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatingAnimHelper"

.field private static sTransWithClipAnimSupported:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "android.view.animation.TranslateWithClipAnimation"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    goto :goto_11

    .line 10
    :catch_9
    move-exception v0

    .line 11
    const-string v1, "FloatingAnimHelper"

    .line 13
    const-string v2, "Failed to get isSupportTransWithClipAnim attributes"

    .line 15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :goto_11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFloatingWindowAnim(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 1

    return-void
.end method

.method public static execFloatingWindowEnterAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_normal_rom_enter:I

    .line 3
    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_normal_rom_exit:I

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 8
    return-void
.end method

.method public static execFloatingWindowExitAnimRomNormal(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_normal_rom_enter:I

    .line 3
    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_normal_rom_exit:I

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 8
    return-void
.end method

.method public static getAutoDensitySupportStatus(Lmiuix/appcompat/app/AppCompatActivity;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Lmiuix/autodensity/IDensity;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p0, Lmiuix/autodensity/IDensity;

    .line 7
    invoke-interface {p0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    .line 10
    move-result p0

    .line 11
    goto :goto_1f

    .line 12
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Lmiuix/autodensity/IDensity;

    .line 18
    if-eqz v0, :cond_1e

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lmiuix/autodensity/IDensity;

    .line 26
    invoke-interface {p0}, Lmiuix/autodensity/IDensity;->shouldAdaptAutoDensity()Z

    .line 29
    move-result p0

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p0, 0x0

    .line 32
    :goto_1f
    return p0
.end method

.method private static isPortrait(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p0, v0, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public static isSupportTransWithClipAnim()Z
    .registers 1

    .line 1
    sget-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z

    .line 3
    return v0
.end method

.method public static markedPageIndex(Lmiuix/appcompat/app/AppCompatActivity;I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object p0

    .line 9
    sget v0, Lmiuix/appcompat/R$id;->miuix_appcompat_floating_window_index:I

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    return-void
.end method

.method public static obtainPageIndex(Lmiuix/appcompat/app/AppCompatActivity;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    move-result-object p0

    .line 9
    sget v0, Lmiuix/appcompat/R$id;->miuix_appcompat_floating_window_index:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    instance-of v0, p0, Ljava/lang/Integer;

    .line 17
    if-eqz v0, :cond_19

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p0, -0x1

    .line 27
    :goto_1a
    return p0
.end method

.method public static preformFloatingEnterAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V
    .registers 3

    .line 1
    sget-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_39

    .line 8
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->getAutoDensitySupportStatus(Lmiuix/appcompat/app/AppCompatActivity;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_23

    .line 14
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1b

    .line 20
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi:I

    .line 22
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi:I

    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 27
    goto :goto_40

    .line 28
    :cond_1b
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi_land:I

    .line 30
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi_land:I

    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 35
    goto :goto_40

    .line 36
    :cond_23
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_31

    .line 42
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim:I

    .line 44
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim:I

    .line 46
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 49
    goto :goto_40

    .line 50
    :cond_31
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_land:I

    .line 52
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_land:I

    .line 54
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 57
    goto :goto_40

    .line 58
    :cond_39
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_in_full_screen:I

    .line 60
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_out_full_screen:I

    .line 62
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 65
    :goto_40
    return-void
.end method

.method public static preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V
    .registers 3

    .line 1
    sget-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-eqz p1, :cond_39

    .line 8
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->getAutoDensitySupportStatus(Lmiuix/appcompat/app/AppCompatActivity;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_23

    .line 14
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1b

    .line 20
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi:I

    .line 22
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi:I

    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 27
    goto :goto_40

    .line 28
    :cond_1b
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi_land:I

    .line 30
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi_land:I

    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 35
    goto :goto_40

    .line 36
    :cond_23
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_31

    .line 42
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim:I

    .line 44
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim:I

    .line 46
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 49
    goto :goto_40

    .line 50
    :cond_31
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_land:I

    .line 52
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_land:I

    .line 54
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 57
    goto :goto_40

    .line 58
    :cond_39
    sget p1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_in_full_screen:I

    .line 60
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_out_full_screen:I

    .line 62
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 65
    :goto_40
    return-void
.end method

.method public static singleAppFloatingActivityEnter(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 1
    sget-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 8
    move-result v0

    .line 9
    invoke-static {p0, v0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->preformFloatingExitAnimWithClip(Lmiuix/appcompat/app/AppCompatActivity;Z)V

    .line 12
    goto :goto_f

    .line 13
    :cond_c
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->executeOpenEnterAnimation()V

    .line 16
    :goto_f
    return-void
.end method

.method public static singleAppFloatingActivityExit(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 3

    .line 1
    sget-boolean v0, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->sTransWithClipAnimSupported:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_3d

    .line 12
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->getAutoDensitySupportStatus(Lmiuix/appcompat/app/AppCompatActivity;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_27

    .line 18
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1f

    .line 24
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi:I

    .line 26
    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi:I

    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 31
    goto :goto_44

    .line 32
    :cond_1f
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_auto_dpi_land:I

    .line 34
    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_auto_dpi_land:I

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 39
    goto :goto_44

    .line 40
    :cond_27
    invoke-static {p0}, Lmiuix/appcompat/app/floatingactivity/FloatingAnimHelper;->isPortrait(Landroid/content/Context;)Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_35

    .line 46
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim:I

    .line 48
    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim:I

    .line 50
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 53
    goto :goto_44

    .line 54
    :cond_35
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_enter_anim_land:I

    .line 56
    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_exit_anim_land:I

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 61
    goto :goto_44

    .line 62
    :cond_3d
    sget v0, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_in_full_screen:I

    .line 64
    sget v1, Lmiuix/appcompat/R$anim;->miuix_appcompat_floating_window_anim_out_full_screen:I

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 69
    :goto_44
    return-void
.end method
