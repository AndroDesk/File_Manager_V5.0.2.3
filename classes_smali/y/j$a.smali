.class public final Ly/j$a;
.super Ljava/lang/Object;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/j;
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
    sput-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 8
    sget v1, Lz/d;->KeyTimeCycle_android_alpha:I

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 16
    sget v1, Lz/d;->KeyTimeCycle_android_elevation:I

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 24
    sget v1, Lz/d;->KeyTimeCycle_android_rotation:I

    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 32
    sget v1, Lz/d;->KeyTimeCycle_android_rotationX:I

    .line 34
    const/4 v2, 0x5

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 40
    sget v1, Lz/d;->KeyTimeCycle_android_rotationY:I

    .line 42
    const/4 v2, 0x6

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 48
    sget v1, Lz/d;->KeyTimeCycle_android_scaleX:I

    .line 50
    const/4 v2, 0x7

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 56
    sget v1, Lz/d;->KeyTimeCycle_transitionPathRotate:I

    .line 58
    const/16 v2, 0x8

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 63
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 65
    sget v1, Lz/d;->KeyTimeCycle_transitionEasing:I

    .line 67
    const/16 v2, 0x9

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 72
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 74
    sget v1, Lz/d;->KeyTimeCycle_motionTarget:I

    .line 76
    const/16 v2, 0xa

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 81
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 83
    sget v1, Lz/d;->KeyTimeCycle_framePosition:I

    .line 85
    const/16 v2, 0xc

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 90
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 92
    sget v1, Lz/d;->KeyTimeCycle_curveFit:I

    .line 94
    const/16 v2, 0xd

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 99
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 101
    sget v1, Lz/d;->KeyTimeCycle_android_scaleY:I

    .line 103
    const/16 v2, 0xe

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 110
    sget v1, Lz/d;->KeyTimeCycle_android_translationX:I

    .line 112
    const/16 v2, 0xf

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 117
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 119
    sget v1, Lz/d;->KeyTimeCycle_android_translationY:I

    .line 121
    const/16 v2, 0x10

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 126
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 128
    sget v1, Lz/d;->KeyTimeCycle_android_translationZ:I

    .line 130
    const/16 v2, 0x11

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 135
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 137
    sget v1, Lz/d;->KeyTimeCycle_motionProgress:I

    .line 139
    const/16 v2, 0x12

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 144
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 146
    sget v1, Lz/d;->KeyTimeCycle_wavePeriod:I

    .line 148
    const/16 v2, 0x14

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 153
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 155
    sget v1, Lz/d;->KeyTimeCycle_waveOffset:I

    .line 157
    const/16 v2, 0x15

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 162
    sget-object v0, Ly/j$a;->a:Landroid/util/SparseIntArray;

    .line 164
    sget v1, Lz/d;->KeyTimeCycle_waveShape:I

    .line 166
    const/16 v2, 0x13

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 171
    return-void
.end method
