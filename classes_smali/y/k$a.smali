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

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 6
    sput-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 8
    sget v1, Lz/d;->KeyTrigger_framePosition:I

    .line 10
    const/16 v2, 0x8

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 15
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lz/d;->KeyTrigger_onCross:I

    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 23
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 25
    sget v1, Lz/d;->KeyTrigger_onNegativeCross:I

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 31
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 33
    sget v1, Lz/d;->KeyTrigger_onPositiveCross:I

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 39
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 41
    sget v1, Lz/d;->KeyTrigger_motionTarget:I

    .line 43
    const/4 v2, 0x7

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 47
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 49
    sget v1, Lz/d;->KeyTrigger_triggerId:I

    .line 51
    const/4 v2, 0x6

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 55
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 57
    sget v1, Lz/d;->KeyTrigger_triggerSlack:I

    .line 59
    const/4 v2, 0x5

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 63
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 65
    sget v1, Lz/d;->KeyTrigger_motion_triggerOnCollision:I

    .line 67
    const/16 v2, 0x9

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 72
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 74
    sget v1, Lz/d;->KeyTrigger_motion_postLayoutCollision:I

    .line 76
    const/16 v2, 0xa

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 83
    sget v1, Lz/d;->KeyTrigger_triggerReceiver:I

    .line 85
    const/16 v2, 0xb

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 90
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 92
    sget v1, Lz/d;->KeyTrigger_viewTransitionOnCross:I

    .line 94
    const/16 v2, 0xc

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 99
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 101
    sget v1, Lz/d;->KeyTrigger_viewTransitionOnNegativeCross:I

    .line 103
    const/16 v2, 0xd

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    sget-object v0, Ly/k$a;->a:Landroid/util/SparseIntArray;

    .line 110
    sget v1, Lz/d;->KeyTrigger_viewTransitionOnPositiveCross:I

    .line 112
    const/16 v2, 0xe

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 117
    return-void
.end method
