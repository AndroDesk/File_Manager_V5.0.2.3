.class Lcom/miui/maml/data/ContentProviderBinder$List;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation


# instance fields
.field private mList:Lcom/miui/maml/elements/ListScreenElement;

.field private mMaxCount:I

.field private mName:Ljava/lang/String;

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "name"

    .line 6
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    .line 12
    const-string v0, "maxCount"

    .line 14
    const v1, 0x7fffffff

    .line 17
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    .line 23
    iput-object p2, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 25
    return-void
.end method


# virtual methods
.method public fill(Landroid/database/Cursor;)V
    .registers 15

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 6
    const-string v1, "ContentProviderBinder"

    .line 8
    if-nez v0, :cond_23

    .line 10
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    iget-object v2, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement;

    .line 20
    iput-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 22
    if-nez v0, :cond_23

    .line 24
    const-string p1, "fail to find list: "

    .line 26
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mName:Ljava/lang/String;

    .line 32
    invoke-static {p1, v0, v1}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 38
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 41
    iget-object v0, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 43
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v2

    .line 51
    new-array v3, v2, [I

    .line 53
    new-array v4, v2, [Ljava/lang/Object;

    .line 55
    const/4 v5, 0x0

    .line 56
    move v6, v5

    .line 57
    :goto_38
    if-ge v6, v2, :cond_71

    .line 59
    :try_start_3a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v7

    .line 63
    check-cast v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 65
    iget-object v7, v7, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 67
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 70
    move-result v7

    .line 71
    aput v7, v3, v6
    :try_end_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_48} :catch_4b

    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 75
    goto :goto_38

    .line 76
    :catch_4b
    move-exception p1

    .line 77
    const-string v2, "illegal column:"

    .line 79
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 89
    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, " "

    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 114
    :cond_71
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 120
    move-result v1

    .line 121
    iget v6, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mMaxCount:I

    .line 123
    if-le v1, v6, :cond_7d

    .line 125
    move v1, v6

    .line 126
    :cond_7d
    move v6, v5

    .line 127
    :goto_7e
    if-ge v6, v1, :cond_108

    .line 129
    move v7, v5

    .line 130
    :goto_81
    if-ge v7, v2, :cond_fc

    .line 132
    const/4 v8, 0x0

    .line 133
    aput-object v8, v4, v7

    .line 135
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 138
    move-result-object v8

    .line 139
    check-cast v8, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;

    .line 141
    aget v9, v3, v7

    .line 143
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    .line 146
    move-result v10

    .line 147
    if-nez v10, :cond_f9

    .line 149
    sget-object v10, Lcom/miui/maml/data/ContentProviderBinder$2;->$SwitchMap$com$miui$maml$elements$ListScreenElement$ColumnInfo$Type:[I

    .line 151
    iget-object v11, v8, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 153
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 156
    move-result v11

    .line 157
    aget v11, v10, v11

    .line 159
    const/4 v12, 0x5

    .line 160
    if-eq v11, v12, :cond_f3

    .line 162
    const/4 v12, 0x6

    .line 163
    if-eq v11, v12, :cond_e5

    .line 165
    iget-object v8, v8, Lcom/miui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lcom/miui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 167
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 170
    move-result v8

    .line 171
    aget v8, v10, v8

    .line 173
    const/4 v10, 0x1

    .line 174
    if-eq v8, v10, :cond_da

    .line 176
    const/4 v10, 0x2

    .line 177
    if-eq v8, v10, :cond_cf

    .line 179
    const/4 v10, 0x3

    .line 180
    if-eq v8, v10, :cond_c4

    .line 182
    const/4 v10, 0x4

    .line 183
    if-eq v8, v10, :cond_b9

    .line 185
    goto :goto_f9

    .line 186
    :cond_b9
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 189
    move-result-wide v8

    .line 190
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    move-result-object v8

    .line 194
    aput-object v8, v4, v7

    .line 196
    goto :goto_f9

    .line 197
    :cond_c4
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 200
    move-result v8

    .line 201
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v8

    .line 205
    aput-object v8, v4, v7

    .line 207
    goto :goto_f9

    .line 208
    :cond_cf
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getFloat(I)F

    .line 211
    move-result v8

    .line 212
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 215
    move-result-object v8

    .line 216
    aput-object v8, v4, v7

    .line 218
    goto :goto_f9

    .line 219
    :cond_da
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getDouble(I)D

    .line 222
    move-result-wide v8

    .line 223
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 226
    move-result-object v8

    .line 227
    aput-object v8, v4, v7

    .line 229
    goto :goto_f9

    .line 230
    :cond_e5
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 233
    move-result-object v8

    .line 234
    if-eqz v8, :cond_f9

    .line 236
    array-length v9, v8

    .line 237
    invoke-static {v8, v5, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 240
    move-result-object v8

    .line 241
    aput-object v8, v4, v7

    .line 243
    goto :goto_f9

    .line 244
    :cond_f3
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 247
    move-result-object v8

    .line 248
    aput-object v8, v4, v7

    .line 250
    :cond_f9
    :goto_f9
    add-int/lit8 v7, v7, 0x1

    .line 252
    goto :goto_81

    .line 253
    :cond_fc
    iget-object v7, p0, Lcom/miui/maml/data/ContentProviderBinder$List;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 255
    invoke-virtual {v7, v4}, Lcom/miui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    .line 258
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 261
    add-int/lit8 v6, v6, 0x1

    .line 263
    goto/16 :goto_7e

    .line 265
    :cond_108
    return-void
.end method
