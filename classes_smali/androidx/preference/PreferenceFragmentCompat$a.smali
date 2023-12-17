.class public final Landroidx/preference/PreferenceFragmentCompat$a;
.super Landroid/os/Handler;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$a;->a:Landroidx/preference/PreferenceFragmentCompat;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_6

    .line 6
    goto :goto_b

    .line 7
    :cond_6
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$a;->a:Landroidx/preference/PreferenceFragmentCompat;

    .line 9
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->bindPreferences()V

    .line 12
    :goto_b
    return-void
.end method
