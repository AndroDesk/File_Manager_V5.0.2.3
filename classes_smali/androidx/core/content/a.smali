.class public final synthetic Landroidx/core/content/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic a(Landroid/widget/TextView;)I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSizeUnit()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;
    .registers 1

    invoke-static {p0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Landroid/content/Context;)Landroid/view/Display;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;
    .registers 1

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/os/storage/StorageVolume;)Ljava/io/File;
    .registers 1

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getMediaStoreVolumeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic j(Landroid/content/pm/ShortcutManager;I)Ljava/util/List;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->getShortcuts(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/app/Activity;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTranslucent(Z)Z

    return-void
.end method

.method public static bridge synthetic l(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutManager;->removeLongLivedShortcuts(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic n(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public static bridge synthetic o(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method public static bridge synthetic p(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method

.method public static bridge synthetic q(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic r(Landroid/view/Window;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method public static bridge synthetic s(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    return-void
.end method

.method public static bridge synthetic t(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic u(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic v(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/EditorInfo;->setInitialSurroundingSubText(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static bridge synthetic w(Landroid/content/pm/PackageManager;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isAutoRevokeWhitelisted()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic x(Landroid/content/pm/ShortcutInfo;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->isCached()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic y(Landroid/content/res/Configuration;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic z(Landroid/view/Window;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method
