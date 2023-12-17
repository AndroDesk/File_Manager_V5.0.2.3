.class public Lmiuix/appcompat/internal/util/AppcompatClassPreLoader;
.super Ljava/lang/Object;
.source "AppcompatClassPreLoader.java"


# static fields
.field public static sIsActionBarClassInit:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static preloadActionBarClasses(Landroid/content/Context;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 15
    const-class v0, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 24
    const-class v0, Landroidx/appcompat/app/a$d;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 33
    const-class v0, Lmiuix/animation/controller/AnimState;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 42
    const-class v0, Lmiuix/animation/base/AnimConfig;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 51
    const-class v0, Lmiuix/appcompat/internal/app/widget/actionbar/CollapseTitle;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 60
    const-class v0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 69
    const-class v0, Lmiuix/appcompat/internal/app/widget/CollapseTabContainer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 78
    const-class v0, Lmiuix/appcompat/internal/app/widget/ExpandTabContainer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 87
    const-class v0, Lmiuix/appcompat/internal/app/widget/SecondaryCollapseTabContainer;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 96
    const-class v0, Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_68} :catch_69

    .line 105
    goto :goto_6d

    .line 106
    :catch_69
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    :goto_6d
    return-void
.end method

.method public static preloadClass(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;

    .line 5
    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/util/AppcompatClassPreLoader$1;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    return-void
.end method

.method public static preloadViewClasses(Landroid/content/Context;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    move-result-object p0

    .line 5
    const-class v0, Landroid/widget/FrameLayout;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 15
    const-class v0, Landroid/widget/LinearLayout;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 24
    const-class v0, Landroid/widget/ImageView;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 33
    const-class v0, Landroid/widget/TextView;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 42
    const-class v0, Landroid/widget/Button;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 51
    const-class v0, Lmiuix/springback/view/SpringBackLayout;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 60
    const-class v0, Landroid/content/res/TypedArray;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_44} :catch_45

    .line 69
    goto :goto_49

    .line 70
    :catch_45
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :goto_49
    return-void
.end method
