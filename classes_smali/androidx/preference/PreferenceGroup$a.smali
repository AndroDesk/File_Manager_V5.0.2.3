.class public final Landroidx/preference/PreferenceGroup$a;
.super Ljava/lang/Object;
.source "PreferenceGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceGroup$a;->a:Landroidx/preference/PreferenceGroup;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup$a;->a:Landroidx/preference/PreferenceGroup;

    .line 4
    iget-object v0, v0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/f;

    .line 6
    invoke-virtual {v0}, Landroidx/collection/f;->clear()V

    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_a
    move-exception v0

    .line 12
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    .line 13
    throw v0
.end method
