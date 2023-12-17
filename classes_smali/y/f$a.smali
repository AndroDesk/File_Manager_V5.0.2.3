.class public final Ly/f$a;
.super Ljava/lang/Object;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/f;
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
    sput-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 8
    sget v1, Lz/d;->KeyCycle_motionTarget:I

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 14
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 16
    sget v1, Lz/d;->KeyCycle_framePosition:I

    .line 18
    const/4 v2, 0x2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 22
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 24
    sget v1, Lz/d;->KeyCycle_transitionEasing:I

    .line 26
    const/4 v2, 0x3

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 30
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 32
    sget v1, Lz/d;->KeyCycle_curveFit:I

    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 38
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 40
    sget v1, Lz/d;->KeyCycle_waveShape:I

    .line 42
    const/4 v2, 0x5

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 46
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 48
    sget v1, Lz/d;->KeyCycle_wavePeriod:I

    .line 50
    const/4 v2, 0x6

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 54
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 56
    sget v1, Lz/d;->KeyCycle_waveOffset:I

    .line 58
    const/4 v2, 0x7

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 64
    sget v1, Lz/d;->KeyCycle_waveVariesBy:I

    .line 66
    const/16 v2, 0x8

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 71
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 73
    sget v1, Lz/d;->KeyCycle_android_alpha:I

    .line 75
    const/16 v2, 0x9

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 80
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 82
    sget v1, Lz/d;->KeyCycle_android_elevation:I

    .line 84
    const/16 v2, 0xa

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 89
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 91
    sget v1, Lz/d;->KeyCycle_android_rotation:I

    .line 93
    const/16 v2, 0xb

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 100
    sget v1, Lz/d;->KeyCycle_android_rotationX:I

    .line 102
    const/16 v2, 0xc

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 107
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 109
    sget v1, Lz/d;->KeyCycle_android_rotationY:I

    .line 111
    const/16 v2, 0xd

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 116
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 118
    sget v1, Lz/d;->KeyCycle_transitionPathRotate:I

    .line 120
    const/16 v2, 0xe

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 125
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 127
    sget v1, Lz/d;->KeyCycle_android_scaleX:I

    .line 129
    const/16 v2, 0xf

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 134
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 136
    sget v1, Lz/d;->KeyCycle_android_scaleY:I

    .line 138
    const/16 v2, 0x10

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 143
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 145
    sget v1, Lz/d;->KeyCycle_android_translationX:I

    .line 147
    const/16 v2, 0x11

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 152
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 154
    sget v1, Lz/d;->KeyCycle_android_translationY:I

    .line 156
    const/16 v2, 0x12

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 161
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 163
    sget v1, Lz/d;->KeyCycle_android_translationZ:I

    .line 165
    const/16 v2, 0x13

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 170
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 172
    sget v1, Lz/d;->KeyCycle_motionProgress:I

    .line 174
    const/16 v2, 0x14

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 179
    sget-object v0, Ly/f$a;->a:Landroid/util/SparseIntArray;

    .line 181
    sget v1, Lz/d;->KeyCycle_wavePhase:I

    .line 183
    const/16 v2, 0x15

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 188
    return-void
.end method
