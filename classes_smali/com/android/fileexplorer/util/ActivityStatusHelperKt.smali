.class public final Lcom/android/fileexplorer/util/ActivityStatusHelperKt;
.super Ljava/lang/Object;
.source "ActivityStatusHelper.kt"


# direct methods
.method public static final isActivityFinish(Landroid/app/Activity;)Z
    .registers 2
    .param p0  # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_14

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_12

    .line 18
    goto :goto_14

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    :goto_14
    const/4 p0, 0x1

    .line 22
    :goto_15
    return p0
.end method
