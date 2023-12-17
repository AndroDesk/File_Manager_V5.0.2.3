.class public final Ly/h;
.super Ly/i;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/h$a;
    }
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ly/i;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ly/h;->e:Ljava/lang/String;

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Ly/h;->f:I

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Ly/h;->g:I

    .line 13
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 15
    iput v1, p0, Ly/h;->h:F

    .line 17
    iput v1, p0, Ly/h;->i:F

    .line 19
    iput v1, p0, Ly/h;->j:F

    .line 21
    iput v1, p0, Ly/h;->k:F

    .line 23
    iput v1, p0, Ly/h;->l:F

    .line 25
    iput v1, p0, Ly/h;->m:F

    .line 27
    iput v0, p0, Ly/h;->n:I

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final b()Ly/d;
    .registers 3

    .line 1
    new-instance v0, Ly/h;

    .line 3
    invoke-direct {v0}, Ly/h;-><init>()V

    .line 6
    invoke-super {v0, p0}, Ly/d;->c(Ly/d;)Ly/d;

    .line 9
    iget-object v1, p0, Ly/h;->e:Ljava/lang/String;

    .line 11
    iput-object v1, v0, Ly/h;->e:Ljava/lang/String;

    .line 13
    iget v1, p0, Ly/h;->f:I

    .line 15
    iput v1, v0, Ly/h;->f:I

    .line 17
    iget v1, p0, Ly/h;->g:I

    .line 19
    iput v1, v0, Ly/h;->g:I

    .line 21
    iget v1, p0, Ly/h;->h:F

    .line 23
    iput v1, v0, Ly/h;->h:F

    .line 25
    const/high16 v1, 0x7fc00000  # Float.NaN

    .line 27
    iput v1, v0, Ly/h;->i:F

    .line 29
    iget v1, p0, Ly/h;->j:F

    .line 31
    iput v1, v0, Ly/h;->j:F

    .line 33
    iget v1, p0, Ly/h;->k:F

    .line 35
    iput v1, v0, Ly/h;->k:F

    .line 37
    iget v1, p0, Ly/h;->l:F

    .line 39
    iput v1, v0, Ly/h;->l:F

    .line 41
    iget v1, p0, Ly/h;->m:F

    .line 43
    iput v1, v0, Ly/h;->m:F

    .line 45
    return-object v0
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 1
    sget-object v0, Lz/d;->KeyPosition:[I

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 7
    sget-object p2, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_e
    const-string v2, "KeyPosition"

    .line 17
    if-ge v1, p2, :cond_d7

    .line 19
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 22
    move-result v3

    .line 23
    sget-object v4, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 25
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x3

    .line 30
    packed-switch v4, :pswitch_data_e2

    .line 33
    const-string v4, "unused attribute 0x"

    .line 35
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v4

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v5, "   "

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    sget-object v5, Ly/h$a;->a:Landroid/util/SparseIntArray;

    .line 53
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 56
    move-result v3

    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    goto/16 :goto_d3

    .line 69
    :pswitch_44  #0xc
    iget v2, p0, Ly/h;->i:F

    .line 71
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 74
    move-result v2

    .line 75
    iput v2, p0, Ly/h;->i:F

    .line 77
    goto/16 :goto_d3

    .line 79
    :pswitch_4e  #0xb
    iget v2, p0, Ly/h;->h:F

    .line 81
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 84
    move-result v2

    .line 85
    iput v2, p0, Ly/h;->h:F

    .line 87
    goto/16 :goto_d3

    .line 89
    :pswitch_58  #0xa
    iget v2, p0, Ly/h;->f:I

    .line 91
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 94
    move-result v2

    .line 95
    iput v2, p0, Ly/h;->f:I

    .line 97
    goto/16 :goto_d3

    .line 99
    :pswitch_62  #0x9
    iget v2, p0, Ly/h;->n:I

    .line 101
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 104
    move-result v2

    .line 105
    iput v2, p0, Ly/h;->n:I

    .line 107
    goto :goto_d3

    .line 108
    :pswitch_6b  #0x8
    iget v2, p0, Ly/h;->i:F

    .line 110
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 113
    move-result v2

    .line 114
    iput v2, p0, Ly/h;->h:F

    .line 116
    iput v2, p0, Ly/h;->i:F

    .line 118
    goto :goto_d3

    .line 119
    :pswitch_76  #0x7
    iget v2, p0, Ly/h;->k:F

    .line 121
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 124
    move-result v2

    .line 125
    iput v2, p0, Ly/h;->k:F

    .line 127
    goto :goto_d3

    .line 128
    :pswitch_7f  #0x6
    iget v2, p0, Ly/h;->j:F

    .line 130
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 133
    move-result v2

    .line 134
    iput v2, p0, Ly/h;->j:F

    .line 136
    goto :goto_d3

    .line 137
    :pswitch_88  #0x5
    iget v2, p0, Ly/h;->g:I

    .line 139
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 142
    move-result v2

    .line 143
    iput v2, p0, Ly/h;->g:I

    .line 145
    goto :goto_d3

    .line 146
    :pswitch_91  #0x4
    iget v2, p0, Ly/i;->d:I

    .line 148
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 151
    move-result v2

    .line 152
    iput v2, p0, Ly/i;->d:I

    .line 154
    goto :goto_d3

    .line 155
    :pswitch_9a  #0x3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 158
    move-result-object v2

    .line 159
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 161
    if-ne v2, v5, :cond_a9

    .line 163
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    iput-object v2, p0, Ly/h;->e:Ljava/lang/String;

    .line 169
    goto :goto_d3

    .line 170
    :cond_a9
    sget-object v2, Lu/c;->c:[Ljava/lang/String;

    .line 172
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 175
    move-result v3

    .line 176
    aget-object v2, v2, v3

    .line 178
    iput-object v2, p0, Ly/h;->e:Ljava/lang/String;

    .line 180
    goto :goto_d3

    .line 181
    :pswitch_b4  #0x2
    iget v2, p0, Ly/d;->a:I

    .line 183
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 186
    move-result v2

    .line 187
    iput v2, p0, Ly/d;->a:I

    .line 189
    goto :goto_d3

    .line 190
    :pswitch_bd  #0x1
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    .line 192
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 195
    move-result-object v2

    .line 196
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 198
    if-ne v2, v5, :cond_cb

    .line 200
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 203
    goto :goto_d3

    .line 204
    :cond_cb
    iget v2, p0, Ly/d;->b:I

    .line 206
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 209
    move-result v2

    .line 210
    iput v2, p0, Ly/d;->b:I

    .line 212
    :goto_d3
    add-int/lit8 v1, v1, 0x1

    .line 214
    goto/16 :goto_e

    .line 216
    :cond_d7
    iget p1, p0, Ly/d;->a:I

    .line 218
    const/4 p2, -0x1

    .line 219
    if-ne p1, p2, :cond_e1

    .line 221
    const-string p1, "no frame position"

    .line 223
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_e1
    return-void

    .line 227
    :pswitch_data_e2
    .packed-switch 0x1
        :pswitch_bd  #00000001
        :pswitch_b4  #00000002
        :pswitch_9a  #00000003
        :pswitch_91  #00000004
        :pswitch_88  #00000005
        :pswitch_7f  #00000006
        :pswitch_76  #00000007
        :pswitch_6b  #00000008
        :pswitch_62  #00000009
        :pswitch_58  #0000000a
        :pswitch_4e  #0000000b
        :pswitch_44  #0000000c
    .end packed-switch
.end method
