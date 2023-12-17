.class public final Ly/h$a;
.super Ljava/lang/Object;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/h;
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
    sput-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 8
    sget v1, Lz/d;->KeyPosition_motionTarget:I

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 16
    sget v1, Lz/d;->KeyPosition_framePosition:I

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 24
    sget v1, Lz/d;->KeyPosition_transitionEasing:I

    .line 26
    const/4 v2, 0x3

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 32
    sget v1, Lz/d;->KeyPosition_curveFit:I

    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 40
    sget v1, Lz/d;->KeyPosition_drawPath:I

    .line 42
    const/4 v2, 0x5

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 48
    sget v1, Lz/d;->KeyPosition_percentX:I

    .line 50
    const/4 v2, 0x6

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 56
    sget v1, Lz/d;->KeyPosition_percentY:I

    .line 58
    const/4 v2, 0x7

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 64
    sget v1, Lz/d;->KeyPosition_keyPositionType:I

    .line 66
    const/16 v2, 0x9

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 71
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 73
    sget v1, Lz/d;->KeyPosition_sizePercent:I

    .line 75
    const/16 v2, 0x8

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 80
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 82
    sget v1, Lz/d;->KeyPosition_percentWidth:I

    .line 84
    const/16 v2, 0xb

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 89
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 91
    sget v1, Lz/d;->KeyPosition_percentHeight:I

    .line 93
    const/16 v2, 0xc

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    sget-object v0, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 100
    sget v1, Lz/d;->KeyPosition_pathMotionArc:I

    .line 102
    const/16 v2, 0xa

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 107
    return-void
.end method
