.class public final Ly/k$a;
.super Ljava/lang/Object;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_framePosition:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_onCross:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_onNegativeCross:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_onPositiveCross:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_motionTarget:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_triggerId:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_triggerSlack:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_motion_triggerOnCollision:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_motion_postLayoutCollision:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_triggerReceiver:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_viewTransitionOnCross:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_viewTransitionOnNegativeCross:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    sget v1, Lz/d;->KeyTrigger_viewTransitionOnPositiveCross:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method
