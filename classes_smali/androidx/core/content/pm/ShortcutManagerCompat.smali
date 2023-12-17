.class public Landroidx/core/content/pm/ShortcutManagerCompat;
.super Ljava/lang/Object;
.source "ShortcutManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;,
        Landroidx/core/content/pm/ShortcutManagerCompat$ShortcutMatchFlags;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field private static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field public static final EXTRA_SHORTCUT_ID:Ljava/lang/String; = "android.intent.extra.shortcut.ID"

.field public static final FLAG_MATCH_CACHED:I = 0x8

.field public static final FLAG_MATCH_DYNAMIC:I = 0x2

.field public static final FLAG_MATCH_MANIFEST:I = 0x1

.field public static final FLAG_MATCH_PINNED:I = 0x4

.field public static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.permission.INSTALL_SHORTCUT"

.field private static final SHORTCUT_LISTENER_INTENT_FILTER_ACTION:Ljava/lang/String; = "androidx.core.content.pm.SHORTCUT_LISTENER"

.field private static final SHORTCUT_LISTENER_META_DATA_KEY:Ljava/lang/String; = "androidx.core.content.pm.shortcut_listener_impl"

.field private static volatile sShortcutInfoChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static addDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    .line 5
    move-result-object v1

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 v3, 0x1d

    .line 10
    if-gt v2, v3, :cond_e

    .line 12
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V

    .line 15
    :cond_e
    const/16 v3, 0x19

    .line 17
    if-lt v2, v3, :cond_3f

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v3

    .line 28
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_2f

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 40
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_1b

    .line 48
    :cond_2f
    const-class v3, Landroid/content/pm/ShortcutManager;

    .line 50
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/content/pm/ShortcutManager;

    .line 56
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_3f

    .line 62
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_3f
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 71
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object p0

    .line 79
    :goto_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5e

    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 91
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 94
    goto :goto_4e

    .line 95
    :cond_5e
    return v0
.end method

.method public static convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .registers 8

    .line 1
    iget-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget v2, v0, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 9
    const/4 v3, 0x6

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v2, v3, :cond_10

    .line 13
    const/4 v5, 0x4

    .line 14
    if-eq v2, v5, :cond_10

    .line 16
    return v4

    .line 17
    :cond_10
    invoke-virtual {v0, p0}, Landroidx/core/graphics/drawable/IconCompat;->d(Landroid/content/Context;)Ljava/io/InputStream;

    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_17

    .line 23
    return v1

    .line 24
    :cond_17
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_1e

    .line 30
    return v1

    .line 31
    :cond_1e
    if-ne v2, v3, :cond_29

    .line 33
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 39
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 41
    goto :goto_30

    .line 42
    :cond_29
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 44
    invoke-direct {v0, v4}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 47
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 49
    :goto_30
    iput-object v0, p1, Landroidx/core/content/pm/ShortcutInfoCompat;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 51
    return v4
.end method

.method public static convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1f

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 22
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_9

    .line 28
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    goto :goto_9

    .line 32
    :cond_1f
    return-void
.end method

.method public static createShortcutResultIntent(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Landroid/content/Intent;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_17

    .line 7
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 15
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0, v0}, Landroidx/appcompat/widget/x;->e(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    .line 22
    move-result-object p0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 p0, 0x0

    .line 25
    :goto_18
    if-nez p0, :cond_1f

    .line 27
    new-instance p0, Landroid/content/Intent;

    .line 29
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 32
    :cond_1f
    invoke-virtual {p1, p0}, Landroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static disableShortcuts(Landroid/content/Context;Ljava/util/List;Ljava/lang/CharSequence;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x19

    .line 5
    if-lt v0, v1, :cond_11

    .line 7
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 15
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 18
    :cond_11
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 25
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p0

    .line 33
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_30

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 45
    invoke-virtual {p2, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    .line 48
    goto :goto_20

    .line 49
    :cond_30
    return-void
.end method

.method public static enableShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    .line 5
    move-result-object v0

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 v2, 0x19

    .line 10
    if-lt v1, v2, :cond_35

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v2

    .line 25
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2a

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 37
    iget-object v3, v3, Landroidx/core/content/pm/ShortcutInfoCompat;->mId:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_18

    .line 43
    :cond_2a
    const-class v2, Landroid/content/pm/ShortcutManager;

    .line 45
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/content/pm/ShortcutManager;

    .line 51
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    .line 54
    :cond_35
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 61
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 64
    move-result-object p0

    .line 65
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object p0

    .line 69
    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_54

    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 81
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 84
    goto :goto_44

    .line 85
    :cond_54
    return-void
.end method

.method public static getDynamicShortcuts(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x19

    .line 5
    if-lt v0, v1, :cond_39

    .line 7
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 15
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    move-result v2

    .line 25
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_38

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 44
    new-instance v3, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    .line 46
    invoke-direct {v3, p0, v2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    .line 49
    invoke-virtual {v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_1f

    .line 57
    :cond_38
    return-object v1

    .line 58
    :cond_39
    :try_start_39
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    .line 65
    move-result-object p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_41} :catch_42

    .line 66
    return-object p0

    .line 67
    :catch_42
    new-instance p0, Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    return-object p0
.end method

.method private static getIconDimensionInternal(Landroid/content/Context;Z)I
    .registers 4

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManager;

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_14

    .line 12
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_12

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    :goto_14
    move v0, v1

    .line 22
    :goto_15
    if-eqz v0, :cond_1a

    .line 24
    const/16 v0, 0x30

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    const/16 v0, 0x60

    .line 29
    :goto_1c
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    move-result-object p0

    .line 41
    if-eqz p1, :cond_2d

    .line 43
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 45
    goto :goto_2f

    .line 46
    :cond_2d
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 48
    :goto_2f
    const/high16 p1, 0x43200000  # 160.0f

    .line 50
    div-float/2addr p0, p1

    .line 51
    int-to-float p1, v0

    .line 52
    mul-float/2addr p1, p0

    .line 53
    float-to-int p0, p1

    .line 54
    return p0
.end method

.method public static getIconMaxHeight(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x19

    .line 8
    if-lt v0, v1, :cond_16

    .line 10
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 18
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getIconMaxHeight()I

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getIconDimensionInternal(Landroid/content/Context;Z)I

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static getIconMaxWidth(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x19

    .line 8
    if-lt v0, v1, :cond_16

    .line 10
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 18
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getIconMaxWidth()I

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    const/4 v0, 0x1

    .line 24
    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getIconDimensionInternal(Landroid/content/Context;Z)I

    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public static getMaxShortcutCountPerActivity(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x19

    .line 8
    if-lt v0, v1, :cond_16

    .line 10
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 18
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    const/4 p0, 0x5

    .line 24
    return p0
.end method

.method public static getShortcutInfoChangeListeners()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method private static getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_24

    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 19
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    .line 22
    move-result v3

    .line 23
    if-le v3, v0, :cond_6

    .line 25
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->getRank()I

    .line 32
    move-result v1

    .line 33
    move v4, v1

    .line 34
    move-object v1, v0

    .line 35
    move v0, v4

    .line 36
    goto :goto_6

    .line 37
    :cond_24
    return-object v1
.end method

.method private static getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    .line 3
    if-nez v0, :cond_71

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Landroid/content/Intent;

    .line 16
    const-string v3, "androidx.core.content.pm.SHORTCUT_LISTENER"

    .line 18
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const/16 v3, 0x80

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v1

    .line 38
    :catch_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_6b

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 50
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 52
    if-nez v2, :cond_36

    .line 54
    goto :goto_25

    .line 55
    :cond_36
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 57
    if-nez v2, :cond_3b

    .line 59
    goto :goto_25

    .line 60
    :cond_3b
    const-string v3, "androidx.core.content.pm.shortcut_listener_impl"

    .line 62
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 66
    if-nez v2, :cond_44

    .line 68
    goto :goto_25

    .line 69
    :cond_44
    :try_start_44
    const-class v3, Landroidx/core/content/pm/ShortcutManagerCompat;

    .line 71
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 74
    move-result-object v3

    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 79
    move-result-object v2

    .line 80
    const-string v3, "getInstance"

    .line 82
    const/4 v5, 0x1

    .line 83
    new-array v6, v5, [Ljava/lang/Class;

    .line 85
    const-class v7, Landroid/content/Context;

    .line 87
    aput-object v7, v6, v4

    .line 89
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    move-result-object v2

    .line 93
    const/4 v3, 0x0

    .line 94
    new-array v5, v5, [Ljava/lang/Object;

    .line 96
    aput-object p0, v5, v4

    .line 98
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 104
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_6a} :catch_25

    .line 107
    goto :goto_25

    .line 108
    :cond_6b
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    .line 110
    if-nez p0, :cond_71

    .line 112
    sput-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    .line 114
    :cond_71
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    .line 116
    return-object p0
.end method

.method private static getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 3
    if-nez v0, :cond_36

    .line 5
    :try_start_4
    const-class v0, Landroidx/core/content/pm/ShortcutManagerCompat;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "androidx.sharetarget.ShortcutInfoCompatSaverImpl"

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "getInstance"

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v4, v3, [Ljava/lang/Class;

    .line 23
    const-class v5, Landroid/content/Context;

    .line 25
    aput-object v5, v4, v2

    .line 27
    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    aput-object p0, v3, v2

    .line 36
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 42
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2b

    .line 44
    :catch_2b
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 46
    if-nez p0, :cond_36

    .line 48
    new-instance p0, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;

    .line 50
    invoke-direct {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver$NoopImpl;-><init>()V

    .line 53
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 55
    :cond_36
    sget-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 57
    return-object p0
.end method

.method public static getShortcuts(Landroid/content/Context;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_17

    .line 7
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 15
    invoke-static {v0, p1}, Landroidx/core/content/a;->j(Landroid/content/pm/ShortcutManager;I)Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->fromShortcuts(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_17
    const/16 v1, 0x19

    .line 26
    if-lt v0, v1, :cond_4e

    .line 28
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    and-int/lit8 v2, p1, 0x1

    .line 43
    if-eqz v2, :cond_33

    .line 45
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getManifestShortcuts()Ljava/util/List;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_33
    and-int/lit8 v2, p1, 0x2

    .line 54
    if-eqz v2, :cond_3e

    .line 56
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_3e
    and-int/lit8 p1, p1, 0x4

    .line 65
    if-eqz p1, :cond_49

    .line 67
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    :cond_49
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutInfoCompat;->fromShortcuts(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :cond_4e
    and-int/lit8 p1, p1, 0x2

    .line 81
    if-eqz p1, :cond_5b

    .line 83
    :try_start_52
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    .line 90
    move-result-object p0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5a} :catch_5b

    .line 91
    return-object p0

    .line 92
    :catch_5b
    :cond_5b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 95
    move-result-object p0

    .line 96
    return-object p0
.end method

.method public static isRateLimitingActive(Landroid/content/Context;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x19

    .line 8
    if-lt v0, v1, :cond_16

    .line 10
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 18
    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->isRateLimitingActive()Z

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_16
    const/4 v0, 0x3

    .line 24
    invoke-static {p0, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcuts(Landroid/content/Context;I)Ljava/util/List;

    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    move-result v0

    .line 32
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    .line 35
    move-result p0

    .line 36
    if-ne v0, p0, :cond_27

    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_28

    .line 40
    :cond_27
    const/4 p0, 0x0

    .line 41
    :goto_28
    return p0
.end method

.method public static isRequestPinShortcutSupported(Landroid/content/Context;)Z
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_13

    .line 7
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 15
    invoke-static {p0}, Landroidx/appcompat/widget/x;->x(Landroid/content/pm/ShortcutManager;)Z

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_13
    const-string v0, "com.android.launcher.permission.INSTALL_SHORTCUT"

    .line 22
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_1d

    .line 29
    return v2

    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object p0

    .line 34
    new-instance v1, Landroid/content/Intent;

    .line 36
    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 38
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p0

    .line 49
    :cond_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4e

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 61
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 63
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_4c

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_30

    .line 77
    :cond_4c
    const/4 p0, 0x1

    .line 78
    return p0

    .line 79
    :cond_4e
    return v2
.end method

.method public static pushDynamicShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    const/16 v1, 0x20

    .line 11
    const/4 v2, 0x1

    .line 12
    if-gt v0, v1, :cond_30

    .line 14
    invoke-virtual {p1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_30

    .line 20
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 28
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2f

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 40
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 47
    goto :goto_1b

    .line 48
    :cond_2f
    return v2

    .line 49
    :cond_30
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getMaxShortcutCountPerActivity(Landroid/content/Context;)I

    .line 52
    move-result v1

    .line 53
    const/4 v3, 0x0

    .line 54
    if-nez v1, :cond_38

    .line 56
    return v3

    .line 57
    :cond_38
    const/16 v4, 0x1d

    .line 59
    if-gt v0, v4, :cond_3f

    .line 61
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconToBitmapIcon(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    .line 64
    :cond_3f
    const/16 v4, 0x1e

    .line 66
    if-lt v0, v4, :cond_53

    .line 68
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 76
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 79
    move-result-object v4

    .line 80
    invoke-static {v0, v4}, Landroidx/core/content/a;->l(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;)V

    .line 83
    goto :goto_8e

    .line 84
    :cond_53
    const/16 v4, 0x19

    .line 86
    if-lt v0, v4, :cond_8e

    .line 88
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 96
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRateLimitingActive()Z

    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_66

    .line 102
    return v3

    .line 103
    :cond_66
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    .line 106
    move-result-object v4

    .line 107
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 110
    move-result v5

    .line 111
    if-lt v5, v1, :cond_7f

    .line 113
    new-array v5, v2, [Ljava/lang/String;

    .line 115
    invoke-static {v4}, Landroidx/core/content/pm/ShortcutManagerCompat$Api25Impl;->getShortcutInfoWithLowestRank(Ljava/util/List;)Ljava/lang/String;

    .line 118
    move-result-object v4

    .line 119
    aput-object v4, v5, v3

    .line 121
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 128
    :cond_7f
    new-array v4, v2, [Landroid/content/pm/ShortcutInfo;

    .line 130
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 133
    move-result-object v5

    .line 134
    aput-object v5, v4, v3

    .line 136
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v0, v4}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    .line 143
    :cond_8e
    :goto_8e
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 146
    move-result-object v0

    .line 147
    :try_start_92
    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->getShortcuts()Ljava/util/List;

    .line 150
    move-result-object v4

    .line 151
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 154
    move-result v5

    .line 155
    if-lt v5, v1, :cond_ab

    .line 157
    new-array v1, v2, [Ljava/lang/String;

    .line 159
    invoke-static {v4}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoCompatWithLowestRank(Ljava/util/List;)Ljava/lang/String;

    .line 162
    move-result-object v4

    .line 163
    aput-object v4, v1, v3

    .line 165
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 168
    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 172
    :cond_ab
    new-array v1, v2, [Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 174
    aput-object p1, v1, v3

    .line 176
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b6} :catch_ff
    .catchall {:try_start_92 .. :try_end_b6} :catchall_da

    .line 183
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 186
    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 190
    move-result-object v0

    .line 191
    :goto_be
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_d2

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 203
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v1, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 210
    goto :goto_be

    .line 211
    :cond_d2
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    .line 214
    move-result-object p1

    .line 215
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    return v2

    .line 219
    :catchall_da
    move-exception v0

    .line 220
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 223
    move-result-object v1

    .line 224
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 227
    move-result-object v1

    .line 228
    :goto_e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_f7

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    move-result-object v2

    .line 238
    check-cast v2, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 240
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v2, v3}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 247
    goto :goto_e3

    .line 248
    :cond_f7
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    .line 251
    move-result-object p1

    .line 252
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    throw v0

    .line 256
    :catch_ff
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 263
    move-result-object v0

    .line 264
    :goto_107
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_11b

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 276
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 283
    goto :goto_107

    .line 284
    :cond_11b
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->getId()Ljava/lang/String;

    .line 287
    move-result-object p1

    .line 288
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    return v3
.end method

.method public static removeAllDynamicShortcuts(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x19

    .line 5
    if-lt v0, v1, :cond_11

    .line 7
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 15
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    .line 18
    :cond_11
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    .line 25
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p0

    .line 33
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_30

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 45
    invoke-virtual {v0}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    .line 48
    goto :goto_20

    .line 49
    :cond_30
    return-void
.end method

.method public static removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x19

    .line 5
    if-lt v0, v1, :cond_11

    .line 7
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    .line 18
    :cond_11
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 25
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p0

    .line 33
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_30

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 45
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    .line 48
    goto :goto_20

    .line 49
    :cond_30
    return-void
.end method

.method public static removeLongLivedShortcuts(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-ge v0, v1, :cond_a

    .line 7
    invoke-static {p0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V

    .line 10
    return-void

    .line 11
    :cond_a
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 19
    invoke-static {v0, p1}, Landroidx/core/content/a;->m(Landroid/content/pm/ShortcutManager;Ljava/util/List;)V

    .line 22
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 29
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p0

    .line 37
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_34

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 49
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutRemoved(Ljava/util/List;)V

    .line 52
    goto :goto_24

    .line 53
    :cond_34
    return-void
.end method

.method private static removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;I)",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x20

    .line 8
    if-le v0, v1, :cond_a

    .line 10
    return-object p0

    .line 11
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_29

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 32
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_13

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    goto :goto_13

    .line 42
    :cond_29
    return-object v0
.end method

.method public static reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    const/16 v1, 0x19

    .line 11
    if-lt v0, v1, :cond_17

    .line 13
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 24
    :cond_17
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p0

    .line 32
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_33

    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 44
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUsageReported(Ljava/util/List;)V

    .line 51
    goto :goto_1f

    .line 52
    :cond_33
    return-void
.end method

.method public static requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z
    .registers 14

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x20

    .line 7
    if-gt v0, v3, :cond_f

    .line 9
    invoke-virtual {p1, v2}, Landroidx/core/content/pm/ShortcutInfoCompat;->isExcludedFromSurfaces(I)Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    const/16 v3, 0x1a

    .line 18
    if-lt v0, v3, :cond_24

    .line 20
    const-class v0, Landroid/content/pm/ShortcutManager;

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/content/pm/ShortcutManager;

    .line 28
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/x;->y(Landroid/content/pm/ShortcutManager;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_24
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2b

    .line 43
    return v1

    .line 44
    :cond_2b
    new-instance v0, Landroid/content/Intent;

    .line 46
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 48
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat;->addToIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 54
    move-result-object v4

    .line 55
    if-nez p2, :cond_3c

    .line 57
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return v2

    .line 61
    :cond_3c
    const/4 v5, 0x0

    .line 62
    new-instance v6, Landroidx/core/content/pm/ShortcutManagerCompat$1;

    .line 64
    invoke-direct {v6, p2}, Landroidx/core/content/pm/ShortcutManagerCompat$1;-><init>(Landroid/content/IntentSender;)V

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v8, -0x1

    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    move-object v3, p0

    .line 72
    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 75
    return v2
.end method

.method public static setDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    const/16 v3, 0x19

    .line 16
    if-lt v2, v3, :cond_42

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    move-result v3

    .line 24
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v3

    .line 31
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_32

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 43
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_1e

    .line 51
    :cond_32
    const-class v3, Landroid/content/pm/ShortcutManager;

    .line 53
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/content/pm/ShortcutManager;

    .line 59
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z

    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_42

    .line 65
    const/4 p0, 0x0

    .line 66
    return p0

    .line 67
    :cond_42
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->removeAllShortcuts()Ljava/lang/Object;

    .line 74
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 81
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 84
    move-result-object p0

    .line 85
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object p0

    .line 89
    :goto_58
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_6b

    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 101
    invoke-virtual {v1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onAllShortcutsRemoved()V

    .line 104
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutAdded(Ljava/util/List;)V

    .line 107
    goto :goto_58

    .line 108
    :cond_6b
    return v0
.end method

.method public static setShortcutInfoChangeListeners(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoChangeListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoChangeListeners:Ljava/util/List;

    .line 3
    return-void
.end method

.method public static setShortcutInfoCompatSaver(Landroidx/core/content/pm/ShortcutInfoCompatSaver;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/content/pm/ShortcutInfoCompatSaver<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Landroidx/core/content/pm/ShortcutManagerCompat;->sShortcutInfoCompatSaver:Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 3
    return-void
.end method

.method public static updateShortcuts(Landroid/content/Context;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/core/content/pm/ShortcutInfoCompat;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeShortcutsExcludedFromSurface(Ljava/util/List;I)Ljava/util/List;

    .line 5
    move-result-object v1

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 v3, 0x1d

    .line 10
    if-gt v2, v3, :cond_e

    .line 12
    invoke-static {p0, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->convertUriIconsToBitmapIcons(Landroid/content/Context;Ljava/util/List;)V

    .line 15
    :cond_e
    const/16 v3, 0x19

    .line 17
    if-lt v2, v3, :cond_3f

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v3

    .line 28
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_2f

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Landroidx/core/content/pm/ShortcutInfoCompat;

    .line 40
    invoke-virtual {v4}, Landroidx/core/content/pm/ShortcutInfoCompat;->toShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_1b

    .line 48
    :cond_2f
    const-class v3, Landroid/content/pm/ShortcutManager;

    .line 50
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/content/pm/ShortcutManager;

    .line 56
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_3f

    .line 62
    const/4 p0, 0x0

    .line 63
    return p0

    .line 64
    :cond_3f
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoSaverInstance(Landroid/content/Context;)Landroidx/core/content/pm/ShortcutInfoCompatSaver;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompatSaver;->addShortcuts(Ljava/util/List;)Ljava/lang/Object;

    .line 71
    invoke-static {p0}, Landroidx/core/content/pm/ShortcutManagerCompat;->getShortcutInfoListeners(Landroid/content/Context;)Ljava/util/List;

    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object p0

    .line 79
    :goto_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5e

    .line 85
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroidx/core/content/pm/ShortcutInfoChangeListener;

    .line 91
    invoke-virtual {v1, p1}, Landroidx/core/content/pm/ShortcutInfoChangeListener;->onShortcutUpdated(Ljava/util/List;)V

    .line 94
    goto :goto_4e

    .line 95
    :cond_5e
    return v0
.end method
