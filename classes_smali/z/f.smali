.class public final Lz/f;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/f$b;,
        Lz/f$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lz/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz/f;->a:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lz/f;->b:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lz/d;->StateSet:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_22
    if-ge v4, v2, :cond_37

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    sget v6, Lz/d;->StateSet_defaultState:I

    if-ne v5, v6, :cond_34

    iget v6, p0, Lz/f;->a:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lz/f;->a:I

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_37
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x0

    :try_start_3b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_3f} :catch_b8
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_b3

    :goto_3f
    const/4 v4, 0x1

    if-eq v2, v4, :cond_bc

    if-eqz v2, :cond_ab

    const-string v5, "StateSet"

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v2, v7, :cond_5a

    if-eq v2, v6, :cond_4e

    goto/16 :goto_ae

    :cond_4e
    :try_start_4e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    goto/16 :goto_bc

    :cond_5a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_be

    goto :goto_8b

    :sswitch_66
    const-string v4, "Variant"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    move v4, v6

    goto :goto_8c

    :sswitch_70
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    goto :goto_8c

    :sswitch_77
    const-string v4, "LayoutDescription"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    move v4, v3

    goto :goto_8c

    :sswitch_81
    const-string v4, "State"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    move v4, v7

    goto :goto_8c

    :cond_8b
    :goto_8b
    move v4, v0

    :goto_8c
    if-eq v4, v7, :cond_9e

    if-eq v4, v6, :cond_91

    goto :goto_ae

    :cond_91
    new-instance v2, Lz/f$b;

    invoke-direct {v2, p1, p2}, Lz/f$b;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    if-eqz v1, :cond_ae

    iget-object v4, v1, Lz/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    :cond_9e
    new-instance v1, Lz/f$a;

    invoke-direct {v1, p1, p2}, Lz/f$a;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    iget-object v2, p0, Lz/f;->b:Landroid/util/SparseArray;

    iget v4, v1, Lz/f$a;->a:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_ae

    :cond_ab
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :cond_ae
    :goto_ae
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_b2} :catch_b8
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_b2} :catch_b3

    goto :goto_3f

    :catch_b3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_bc

    :catch_b8
    move-exception p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_bc
    :goto_bc
    return-void

    nop

    :sswitch_data_be
    .sparse-switch
        0x4c7d471 -> :sswitch_81
        0x4d92b252 -> :sswitch_77
        0x526c4e31 -> :sswitch_70
        0x7155a865 -> :sswitch_66
    .end sparse-switch
.end method


# virtual methods
.method public final a(I)I
    .registers 5

    const/4 v0, -0x1

    int-to-float v1, v0

    if-ne v0, p1, :cond_32

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lz/f;->b:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz/f$a;

    goto :goto_18

    :cond_10
    iget-object p1, p0, Lz/f;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz/f$a;

    :goto_18
    if-nez p1, :cond_1b

    goto :goto_51

    :cond_1b
    invoke-virtual {p1, v1, v1}, Lz/f$a;->a(FF)I

    move-result v1

    if-ne v0, v1, :cond_22

    goto :goto_51

    :cond_22
    if-ne v1, v0, :cond_27

    iget p1, p1, Lz/f$a;->c:I

    goto :goto_50

    :cond_27
    iget-object p1, p1, Lz/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz/f$b;

    iget p1, p1, Lz/f$b;->e:I

    goto :goto_50

    :cond_32
    iget-object v2, p0, Lz/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz/f$a;

    if-nez p1, :cond_3d

    goto :goto_51

    :cond_3d
    invoke-virtual {p1, v1, v1}, Lz/f$a;->a(FF)I

    move-result v1

    if-ne v1, v0, :cond_46

    iget p1, p1, Lz/f$a;->c:I

    goto :goto_50

    :cond_46
    iget-object p1, p1, Lz/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz/f$b;

    iget p1, p1, Lz/f$b;->e:I

    :goto_50
    move v0, p1

    :goto_51
    return v0
.end method
