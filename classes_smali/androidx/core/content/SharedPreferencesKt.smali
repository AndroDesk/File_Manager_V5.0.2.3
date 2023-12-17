.class public final Landroidx/core/content/SharedPreferencesKt;
.super Ljava/lang/Object;
.source "SharedPreferences.kt"


# direct methods
.method public static final edit(Landroid/content/SharedPreferences;ZLh3/l;)V
    .registers 4
    .param p0  # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Z",
            "Lh3/l<",
            "-",
            "Landroid/content/SharedPreferences$Editor;",
            "Ly2/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 3
    invoke-static {p0, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "action"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p0

    .line 15
    const-string v0, "editor"

    .line 17
    invoke-static {p0, v0}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {p2, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    if-eqz p1, :cond_1c

    .line 25
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    :goto_1f
    return-void
.end method

.method public static synthetic edit$default(Landroid/content/SharedPreferences;ZLh3/l;ILjava/lang/Object;)V
    .registers 5

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 3
    if-eqz p3, :cond_5

    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_5
    const-string p3, "<this>"

    .line 8
    invoke-static {p0, p3}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string p3, "action"

    .line 13
    invoke-static {p2, p3}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object p0

    .line 20
    const-string p3, "editor"

    .line 22
    invoke-static {p0, p3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p2, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    if-eqz p1, :cond_21

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    :goto_24
    return-void
.end method
