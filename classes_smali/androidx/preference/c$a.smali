.class public final Landroidx/preference/c$a;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/c;


# direct methods
.method public constructor <init>(Landroidx/preference/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/c$a;->a:Landroidx/preference/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/preference/c$a;->a:Landroidx/preference/c;

    .line 3
    invoke-virtual {v0}, Landroidx/preference/c;->updatePreferences()V

    .line 6
    return-void
.end method
