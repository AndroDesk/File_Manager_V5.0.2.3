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
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lz/f;->a:I

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    .line 9
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 12
    iput-object v1, p0, Lz/f;->b:Landroid/util/SparseArray;

    .line 14
    new-instance v1, Landroid/util/SparseArray;

    .line 16
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lz/d;->StateSet:[I

    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    move v4, v3

    .line 35
    :goto_22
    if-ge v4, v2, :cond_37

    .line 37
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 40
    move-result v5

    .line 41
    sget v6, Lz/d;->StateSet_defaultState:I

    .line 43
    if-ne v5, v6, :cond_34

    .line 45
    iget v6, p0, Lz/f;->a:I

    .line 47
    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 50
    move-result v5

    .line 51
    iput v5, p0, Lz/f;->a:I

    .line 53
    :cond_34
    add-int/lit8 v4, v4, 0x1

    .line 55
    goto :goto_22

    .line 56
    :cond_37
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    const/4 v1, 0x0

    .line 60
    :try_start_3b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 63
    move-result v2
    :try_end_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3b .. :try_end_3f} :catch_b8
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3f} :catch_b3

    .line 64
    :goto_3f
    const/4 v4, 0x1

    .line 65
    if-eq v2, v4, :cond_bc

    .line 67
    if-eqz v2, :cond_ab

    .line 69
    const-string v5, "StateSet"

    .line 71
    const/4 v6, 0x3

    .line 72
    const/4 v7, 0x2

    .line 73
    if-eq v2, v7, :cond_5a

    .line 75
    if-eq v2, v6, :cond_4e

    .line 77
    goto/16 :goto_ae

    .line 79
    :cond_4e
    :try_start_4e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_ae

    .line 89
    goto/16 :goto_bc

    .line 91
    :cond_5a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 98
    move-result v8

    .line 99
    sparse-switch v8, :sswitch_data_be

    .line 102
    goto :goto_8b

    .line 103
    :sswitch_66
    const-string v4, "Variant"

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_8b

    .line 111
    move v4, v6

    .line 112
    goto :goto_8c

    .line 113
    :sswitch_70
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_8b

    .line 119
    goto :goto_8c

    .line 120
    :sswitch_77
    const-string v4, "LayoutDescription"

    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_8b

    .line 128
    move v4, v3

    .line 129
    goto :goto_8c

    .line 130
    :sswitch_81
    const-string v4, "State"

    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_8b

    .line 138
    move v4, v7

    .line 139
    goto :goto_8c

    .line 140
    :cond_8b
    :goto_8b
    move v4, v0

    .line 141
    :goto_8c
    if-eq v4, v7, :cond_9e

    .line 143
    if-eq v4, v6, :cond_91

    .line 145
    goto :goto_ae

    .line 146
    :cond_91
    new-instance v2, Lz/f$b;

    .line 148
    invoke-direct {v2, p1, p2}, Lz/f$b;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 151
    if-eqz v1, :cond_ae

    .line 153
    iget-object v4, v1, Lz/f$a;->b:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    goto :goto_ae

    .line 159
    :cond_9e
    new-instance v1, Lz/f$a;

    .line 161
    invoke-direct {v1, p1, p2}, Lz/f$a;-><init>(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 164
    iget-object v2, p0, Lz/f;->b:Landroid/util/SparseArray;

    .line 166
    iget v4, v1, Lz/f$a;->a:I

    .line 168
    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    goto :goto_ae

    .line 172
    :cond_ab
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 175
    :cond_ae
    :goto_ae
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 178
    move-result v2
    :try_end_b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_b2} :catch_b8
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_b2} :catch_b3

    .line 179
    goto :goto_3f

    .line 180
    :catch_b3
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    goto :goto_bc

    .line 185
    :catch_b8
    move-exception p1

    .line 186
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 189
    :cond_bc
    :goto_bc
    return-void

    .line 190
    nop

    .line 191
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

    .line 1
    const/4 v0, -0x1

    .line 2
    int-to-float v1, v0

    .line 3
    if-ne v0, p1, :cond_32

    .line 5
    if-ne p1, v0, :cond_10

    .line 7
    iget-object p1, p0, Lz/f;->b:Landroid/util/SparseArray;

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lz/f$a;

    .line 16
    goto :goto_18

    .line 17
    :cond_10
    iget-object p1, p0, Lz/f;->b:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lz/f$a;

    .line 25
    :goto_18
    if-nez p1, :cond_1b

    .line 27
    goto :goto_51

    .line 28
    :cond_1b
    invoke-virtual {p1, v1, v1}, Lz/f$a;->a(FF)I

    .line 31
    move-result v1

    .line 32
    if-ne v0, v1, :cond_22

    .line 34
    goto :goto_51

    .line 35
    :cond_22
    if-ne v1, v0, :cond_27

    .line 37
    iget p1, p1, Lz/f$a;->c:I

    .line 39
    goto :goto_50

    .line 40
    :cond_27
    iget-object p1, p1, Lz/f$a;->b:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lz/f$b;

    .line 48
    iget p1, p1, Lz/f$b;->e:I

    .line 50
    goto :goto_50

    .line 51
    :cond_32
    iget-object v2, p0, Lz/f;->b:Landroid/util/SparseArray;

    .line 53
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lz/f$a;

    .line 59
    if-nez p1, :cond_3d

    .line 61
    goto :goto_51

    .line 62
    :cond_3d
    invoke-virtual {p1, v1, v1}, Lz/f$a;->a(FF)I

    .line 65
    move-result v1

    .line 66
    if-ne v1, v0, :cond_46

    .line 68
    iget p1, p1, Lz/f$a;->c:I

    .line 70
    goto :goto_50

    .line 71
    :cond_46
    iget-object p1, p1, Lz/f$a;->b:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lz/f$b;

    .line 79
    iget p1, p1, Lz/f$b;->e:I

    .line 81
    :goto_50
    move v0, p1

    .line 82
    :goto_51
    return v0
.end method
