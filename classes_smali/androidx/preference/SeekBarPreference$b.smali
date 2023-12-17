.class public final Landroidx/preference/SeekBarPreference$b;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/SeekBarPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/SeekBarPreference$b;->a:Landroidx/preference/SeekBarPreference;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    iget-object p1, p0, Landroidx/preference/SeekBarPreference$b;->a:Landroidx/preference/SeekBarPreference;

    .line 11
    iget-boolean v1, p1, Landroidx/preference/SeekBarPreference;->h:Z

    .line 13
    if-nez v1, :cond_17

    .line 15
    const/16 v1, 0x15

    .line 17
    if-eq p2, v1, :cond_16

    .line 19
    const/16 v1, 0x16

    .line 21
    if-ne p2, v1, :cond_17

    .line 23
    :cond_16
    return v0

    .line 24
    :cond_17
    const/16 v1, 0x17

    .line 26
    if-eq p2, v1, :cond_31

    .line 28
    const/16 v1, 0x42

    .line 30
    if-ne p2, v1, :cond_20

    .line 32
    goto :goto_31

    .line 33
    :cond_20
    iget-object p1, p1, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    .line 35
    if-nez p1, :cond_2c

    .line 37
    const-string p1, "SeekBarPreference"

    .line 39
    const-string p2, "SeekBar view is null and hence cannot be adjusted."

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v0

    .line 45
    :cond_2c
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 48
    move-result p1

    .line 49
    return p1

    .line 50
    :cond_31
    :goto_31
    return v0
.end method
