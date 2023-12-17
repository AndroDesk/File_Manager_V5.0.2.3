.class public Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;
    }
.end annotation


# instance fields
.field public mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public mVarName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ":"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_8a

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$000()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_28

    .line 36
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 38
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 40
    goto :goto_89

    .line 41
    :cond_28
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$100()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_37

    .line 51
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 55
    goto :goto_89

    .line 56
    :cond_37
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$200()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_85

    .line 66
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$300()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4c

    .line 76
    goto :goto_85

    .line 77
    :cond_4c
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$400()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5b

    .line 87
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 89
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 91
    goto :goto_89

    .line 92
    :cond_5b
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$500()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6a

    .line 102
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 104
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 106
    goto :goto_89

    .line 107
    :cond_6a
    invoke-static {}, Lcom/miui/maml/elements/ListScreenElement;->access$600()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_79

    .line 117
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 119
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 121
    goto :goto_89

    .line 122
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 124
    const-string v1, "List: invalid item data type:"

    .line 126
    invoke-static {v1, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    throw v0

    .line 134
    :cond_85
    :goto_85
    sget-object p1, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 136
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 138
    :goto_89
    return-void

    .line 139
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 141
    const-string v1, "List: invalid item data "

    .line 143
    invoke-static {v1, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 150
    throw v0
.end method

.method public static createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const-string v1, ","

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    array-length v1, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_15
    if-ge v2, v1, :cond_24

    .line 24
    aget-object v3, p0, v2

    .line 26
    new-instance v4, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 28
    invoke-direct {v4, v3}, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 36
    goto :goto_15

    .line 37
    :cond_24
    return-object v0
.end method


# virtual methods
.method public validate(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    sget-object v0, Lcom/miui/maml/elements/ListScreenElement$1;->$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    aget v0, v0, v1

    .line 15
    packed-switch v0, :pswitch_data_26

    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :pswitch_13  #0x6
    instance-of p1, p1, Ljava/lang/Float;

    .line 22
    return p1

    .line 23
    :pswitch_16  #0x5
    instance-of p1, p1, Ljava/lang/Long;

    .line 25
    return p1

    .line 26
    :pswitch_19  #0x4
    instance-of p1, p1, Ljava/lang/Double;

    .line 28
    return p1

    .line 29
    :pswitch_1c  #0x3
    instance-of p1, p1, Ljava/lang/Integer;

    .line 31
    return p1

    .line 32
    :pswitch_1f  #0x2
    instance-of p1, p1, Landroid/graphics/Bitmap;

    .line 34
    return p1

    .line 35
    :pswitch_22  #0x1
    instance-of p1, p1, Ljava/lang/String;

    .line 37
    return p1

    .line 38
    nop

    .line 39
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_22  #00000001
        :pswitch_1f  #00000002
        :pswitch_1c  #00000003
        :pswitch_19  #00000004
        :pswitch_16  #00000005
        :pswitch_13  #00000006
    .end packed-switch
.end method
