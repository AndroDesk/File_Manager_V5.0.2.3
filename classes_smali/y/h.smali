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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ly/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ly/h;->e:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ly/h;->f:I

    const/4 v0, 0x0

    iput v0, p0, Ly/h;->g:I

    const/high16 v1, 0x7fc00000  # Float.NaN

    iput v1, p0, Ly/h;->h:F

    iput v1, p0, Ly/h;->i:F

    iput v1, p0, Ly/h;->j:F

    iput v1, p0, Ly/h;->k:F

    iput v1, p0, Ly/h;->l:F

    iput v1, p0, Ly/h;->m:F

    iput v0, p0, Ly/h;->n:I

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

    new-instance v0, Ly/h;

    invoke-direct {v0}, Ly/h;-><init>()V

    invoke-super {v0, p0}, Ly/d;->c(Ly/d;)Ly/d;

    iget-object v1, p0, Ly/h;->e:Ljava/lang/String;

    iput-object v1, v0, Ly/h;->e:Ljava/lang/String;

    iget v1, p0, Ly/h;->f:I

    iput v1, v0, Ly/h;->f:I

    iget v1, p0, Ly/h;->g:I

    iput v1, v0, Ly/h;->g:I

    iget v1, p0, Ly/h;->h:F

    iput v1, v0, Ly/h;->h:F

    const/high16 v1, 0x7fc00000  # Float.NaN

    iput v1, v0, Ly/h;->i:F

    iget v1, p0, Ly/h;->j:F

    iput v1, v0, Ly/h;->j:F

    iget v1, p0, Ly/h;->k:F

    iput v1, v0, Ly/h;->k:F

    iget v1, p0, Ly/h;->l:F

    iput v1, v0, Ly/h;->l:F

    iget v1, p0, Ly/h;->m:F

    iput v1, v0, Ly/h;->m:F

    return-object v0
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    sget-object v0, Lz/d;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget-object p2, Ly/h$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    const-string v2, "KeyPosition"

    if-ge v1, p2, :cond_d7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget-object v4, Ly/h$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/4 v5, 0x3

    packed-switch v4, :pswitch_data_e2

    const-string v4, "unused attribute 0x"

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ly/h$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d3

    :pswitch_44  #0xc
    iget v2, p0, Ly/h;->i:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ly/h;->i:F

    goto/16 :goto_d3

    :pswitch_4e  #0xb
    iget v2, p0, Ly/h;->h:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ly/h;->h:F

    goto/16 :goto_d3

    :pswitch_58  #0xa
    iget v2, p0, Ly/h;->f:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ly/h;->f:I

    goto/16 :goto_d3

    :pswitch_62  #0x9
    iget v2, p0, Ly/h;->n:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ly/h;->n:I

    goto :goto_d3

    :pswitch_6b  #0x8
    iget v2, p0, Ly/h;->i:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ly/h;->h:F

    iput v2, p0, Ly/h;->i:F

    goto :goto_d3

    :pswitch_76  #0x7
    iget v2, p0, Ly/h;->k:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ly/h;->k:F

    goto :goto_d3

    :pswitch_7f  #0x6
    iget v2, p0, Ly/h;->j:F

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Ly/h;->j:F

    goto :goto_d3

    :pswitch_88  #0x5
    iget v2, p0, Ly/h;->g:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ly/h;->g:I

    goto :goto_d3

    :pswitch_91  #0x4
    iget v2, p0, Ly/i;->d:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Ly/i;->d:I

    goto :goto_d3

    :pswitch_9a  #0x3
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_a9

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ly/h;->e:Ljava/lang/String;

    goto :goto_d3

    :cond_a9
    sget-object v2, Lu/c;->c:[Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Ly/h;->e:Ljava/lang/String;

    goto :goto_d3

    :pswitch_b4  #0x2
    iget v2, p0, Ly/d;->a:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ly/d;->a:I

    goto :goto_d3

    :pswitch_bd  #0x1
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->S:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_cb

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_d3

    :cond_cb
    iget v2, p0, Ly/d;->b:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Ly/d;->b:I

    :goto_d3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e

    :cond_d7
    iget p1, p0, Ly/d;->a:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_e1

    const-string p1, "no frame position"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    return-void

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
