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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/preference/SeekBarPreference;)V
    .registers 2

    iput-object p1, p0, Landroidx/preference/SeekBarPreference$b;->a:Landroidx/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    return v0

    :cond_8
    iget-object p1, p0, Landroidx/preference/SeekBarPreference$b;->a:Landroidx/preference/SeekBarPreference;

    iget-boolean v1, p1, Landroidx/preference/SeekBarPreference;->h:Z

    if-nez v1, :cond_17

    const/16 v1, 0x15

    if-eq p2, v1, :cond_16

    const/16 v1, 0x16

    if-ne p2, v1, :cond_17

    :cond_16
    return v0

    :cond_17
    const/16 v1, 0x17

    if-eq p2, v1, :cond_31

    const/16 v1, 0x42

    if-ne p2, v1, :cond_20

    goto :goto_31

    :cond_20
    iget-object p1, p1, Landroidx/preference/SeekBarPreference;->f:Landroid/widget/SeekBar;

    if-nez p1, :cond_2c

    const-string p1, "SeekBarPreference"

    const-string p2, "SeekBar view is null and hence cannot be adjusted."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2c
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_31
    :goto_31
    return v0
.end method
