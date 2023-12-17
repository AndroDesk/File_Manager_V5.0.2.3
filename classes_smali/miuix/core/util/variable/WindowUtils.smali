.class public Lmiuix/core/util/variable/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static changeWindowBackground(Landroid/app/Activity;F)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    move-result-object v0

    .line 9
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 18
    return-void
.end method

.method public static setTranslucentStatus(Landroid/view/Window;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lmiuix/core/util/variable/WindowWrapper;->setTranslucentStatus(Landroid/view/Window;I)Z

    .line 4
    return-void
.end method
