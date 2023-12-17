.class public Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;
.super Ljava/lang/Object;
.source "Mp4AtomTree.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field private dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

.field private freeNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private hdlrWithinMdiaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private hdlrWithinMetaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private ilstNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private mdatNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private metaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private moovBuffer:Ljava/nio/ByteBuffer;

.field private moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

.field private moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private stco:Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

.field private stcoNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private tagsNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

.field private trakNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private udtaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.mp4"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/io/RandomAccessFile;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 10
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildTree(Ljava/io/RandomAccessFile;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    return-void
.end method


# virtual methods
.method public buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)V
    .registers 13

    .line 1
    invoke-virtual {p2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 17
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_47

    .line 27
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;

    .line 29
    invoke-direct {v2, v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 32
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4MetaBox;->processData()V

    .line 35
    :try_start_22
    new-instance v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 37
    invoke-direct {v2, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_27
    .catch Lorg/jaudiotagger/audio/exceptions/NullBoxIdException; {:try_start_22 .. :try_end_27} :catch_2a
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    .line 40
    goto :goto_33

    .line 41
    :catchall_28
    move-exception p2

    .line 42
    goto :goto_3d

    .line 43
    :catch_2a
    :try_start_2a
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 46
    move-result v2

    .line 47
    add-int/lit8 v2, v2, -0x4

    .line 49
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_28

    .line 52
    :goto_33
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 55
    move-result v2

    .line 56
    add-int/lit8 v2, v2, -0x8

    .line 58
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    goto :goto_47

    .line 62
    :goto_3d
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 65
    move-result v0

    .line 66
    add-int/lit8 v0, v0, -0x8

    .line 68
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    throw p2

    .line 72
    :cond_47
    :goto_47
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 75
    move-result v2

    .line 76
    :goto_4b
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 79
    move-result v3

    .line 80
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 83
    move-result v4

    .line 84
    add-int/2addr v4, v2

    .line 85
    add-int/lit8 v4, v4, -0x8

    .line 87
    if-ge v3, v4, :cond_239

    .line 89
    new-instance v3, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 91
    invoke-direct {v3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 94
    iget-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 96
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 99
    move-result-wide v4

    .line 100
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 103
    move-result v6

    .line 104
    int-to-long v6, v6

    .line 105
    add-long/2addr v4, v6

    .line 106
    invoke-virtual {v3, v4, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    .line 109
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    .line 111
    const-string v5, "Atom "

    .line 113
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v6, " @ "

    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 132
    move-result-wide v6

    .line 133
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    const-string v6, " of size:"

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 144
    move-result v6

    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string v6, " ,ends @ "

    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 156
    move-result-wide v6

    .line 157
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 160
    move-result v8

    .line 161
    int-to-long v8, v8

    .line 162
    add-long/2addr v6, v8

    .line 163
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 173
    new-instance v4, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 175
    invoke-direct {v4, v3}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p2, v4}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 181
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 184
    move-result-object v5

    .line 185
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->UDTA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 187
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 190
    move-result-object v7

    .line 191
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_c8

    .line 197
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->udtaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 199
    goto/16 :goto_1ba

    .line 201
    :cond_c8
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 207
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 210
    move-result-object v8

    .line 211
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_ea

    .line 217
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_ea

    .line 231
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->metaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 233
    goto/16 :goto_1ba

    .line 235
    :cond_ea
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 238
    move-result-object v5

    .line 239
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->HDLR:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 241
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 244
    move-result-object v9

    .line 245
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    move-result v5

    .line 249
    if-eqz v5, :cond_10c

    .line 251
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 258
    move-result-object v9

    .line 259
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    move-result v5

    .line 263
    if-eqz v5, :cond_10c

    .line 265
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 267
    goto/16 :goto_1ba

    .line 269
    :cond_10c
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 276
    move-result-object v8

    .line 277
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    move-result v5

    .line 281
    if-eqz v5, :cond_11e

    .line 283
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 285
    goto/16 :goto_1ba

    .line 287
    :cond_11e
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 290
    move-result-object v5

    .line 291
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TAGS:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 293
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 296
    move-result-object v8

    .line 297
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    move-result v5

    .line 301
    if-eqz v5, :cond_132

    .line 303
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->tagsNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 305
    goto/16 :goto_1ba

    .line 307
    :cond_132
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 310
    move-result-object v5

    .line 311
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STCO:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 313
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 316
    move-result-object v8

    .line 317
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    move-result v5

    .line 321
    if-eqz v5, :cond_150

    .line 323
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stco:Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 325
    if-nez v5, :cond_1ba

    .line 327
    new-instance v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 329
    invoke-direct {v5, v3, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 332
    iput-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stco:Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 334
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 336
    goto :goto_1ba

    .line 337
    :cond_150
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 340
    move-result-object v5

    .line 341
    sget-object v8, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 343
    invoke-virtual {v8}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 346
    move-result-object v8

    .line 347
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    move-result v5

    .line 351
    if-eqz v5, :cond_18f

    .line 353
    invoke-virtual {p2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getParent()Lorg/jaudiotagger/utils/tree/TreeNode;

    .line 356
    move-result-object v5

    .line 357
    check-cast v5, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 359
    if-eqz v5, :cond_1ba

    .line 361
    invoke-virtual {v5}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 364
    move-result-object v5

    .line 365
    check-cast v5, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 367
    if-eqz v5, :cond_1ba

    .line 369
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 372
    move-result-object v8

    .line 373
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 376
    move-result-object v7

    .line 377
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    move-result v7

    .line 381
    if-eqz v7, :cond_1ba

    .line 383
    invoke-virtual {v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 390
    move-result-object v7

    .line 391
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    move-result v5

    .line 395
    if-eqz v5, :cond_1ba

    .line 397
    iput-object v4, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->ilstNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 399
    goto :goto_1ba

    .line 400
    :cond_18f
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 403
    move-result-object v5

    .line 404
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 406
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 409
    move-result-object v7

    .line 410
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    move-result v5

    .line 414
    if-eqz v5, :cond_1a5

    .line 416
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 418
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    goto :goto_1ba

    .line 422
    :cond_1a5
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 425
    move-result-object v5

    .line 426
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 428
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 431
    move-result-object v7

    .line 432
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    move-result v5

    .line 436
    if-eqz v5, :cond_1ba

    .line 438
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 440
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_1ba
    :goto_1ba
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 446
    move-result-object v5

    .line 447
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->TRAK:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 449
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 452
    move-result-object v7

    .line 453
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    move-result v5

    .line 457
    if-nez v5, :cond_228

    .line 459
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 462
    move-result-object v5

    .line 463
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDIA:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 465
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 468
    move-result-object v7

    .line 469
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    move-result v5

    .line 473
    if-nez v5, :cond_228

    .line 475
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 478
    move-result-object v5

    .line 479
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MINF:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 481
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 484
    move-result-object v7

    .line 485
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    move-result v5

    .line 489
    if-nez v5, :cond_228

    .line 491
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 494
    move-result-object v5

    .line 495
    sget-object v7, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->STBL:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 497
    invoke-virtual {v7}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 500
    move-result-object v7

    .line 501
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    move-result v5

    .line 505
    if-nez v5, :cond_228

    .line 507
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 510
    move-result-object v5

    .line 511
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 514
    move-result-object v6

    .line 515
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    move-result v5

    .line 519
    if-nez v5, :cond_228

    .line 521
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 524
    move-result-object v5

    .line 525
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->META:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 527
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 530
    move-result-object v6

    .line 531
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    move-result v5

    .line 535
    if-nez v5, :cond_228

    .line 537
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 540
    move-result-object v5

    .line 541
    sget-object v6, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->ILST:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 543
    invoke-virtual {v6}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 546
    move-result-object v6

    .line 547
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    move-result v5

    .line 551
    if-eqz v5, :cond_22b

    .line 553
    :cond_228
    invoke-virtual {p0, p1, v4}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)V

    .line 556
    :cond_22b
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 559
    move-result v4

    .line 560
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 563
    move-result v3

    .line 564
    add-int/2addr v3, v4

    .line 565
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 568
    goto/16 :goto_4b

    .line 570
    :cond_239
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 573
    return-void
.end method

.method public buildTree(Ljava/io/RandomAccessFile;Z)Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
    .registers 11

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 4
    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_11c

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    :try_start_6
    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 10
    new-instance v0, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 12
    invoke-direct {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>()V

    .line 15
    iput-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 17
    new-instance v1, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    .line 19
    invoke-direct {v1, v0}, Lorg/jaudiotagger/utils/tree/DefaultTreeModel;-><init>(Lorg/jaudiotagger/utils/tree/TreeNode;)V

    .line 22
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    .line 24
    const/16 v0, 0x8

    .line 26
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 29
    move-result-object v0

    .line 30
    :goto_1d
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    .line 37
    move-result-wide v3

    .line 38
    cmp-long v1, v1, v3

    .line 40
    if-gez v1, :cond_102

    .line 42
    new-instance v1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 44
    invoke-direct {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>()V

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 50
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_11a

    .line 56
    const-wide/16 v2, 0x8

    .line 58
    :try_start_39
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->update(Ljava/nio/ByteBuffer;)V
    :try_end_3c
    .catch Lorg/jaudiotagger/audio/exceptions/NullBoxIdException; {:try_start_39 .. :try_end_3c} :catch_bd
    .catchall {:try_start_39 .. :try_end_3c} :catchall_11a

    .line 61
    :try_start_3c
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    .line 64
    move-result-wide v4

    .line 65
    sub-long/2addr v4, v2

    .line 66
    invoke-virtual {v1, v4, v5}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->setFilePos(J)V

    .line 69
    new-instance v2, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 71
    invoke-direct {v2, v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MOOV:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 80
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_7c

    .line 90
    iput-object v2, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 92
    iput-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 94
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    .line 97
    move-result-wide v3

    .line 98
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 101
    move-result v5

    .line 102
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 105
    move-result-object v5

    .line 106
    iput-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {p1, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 111
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 116
    iget-object v5, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {p0, v5, v2}, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->buildChildrenOfNode(Ljava/nio/ByteBuffer;Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)V

    .line 121
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 124
    goto :goto_a9

    .line 125
    :cond_7c
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 128
    move-result-object v3

    .line 129
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->FREE:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 131
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_92

    .line 141
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 143
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_a9

    .line 147
    :cond_92
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 150
    move-result-object v3

    .line 151
    sget-object v4, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->MDAT:Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;

    .line 153
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/mp4/Mp4NotMetaFieldKey;->getFieldName()Ljava/lang/String;

    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_a9

    .line 163
    iput-object v2, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 165
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNodes:Ljava/util/List;

    .line 167
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_a9
    :goto_a9
    iget-object v3, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 172
    invoke-virtual {v3, v2}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 175
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    .line 178
    move-result-wide v2

    .line 179
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 182
    move-result v1

    .line 183
    int-to-long v4, v1

    .line 184
    add-long/2addr v2, v4

    .line 185
    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 188
    goto/16 :goto_1d

    .line 190
    :catch_bd
    move-exception v0

    .line 191
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 193
    const/4 v4, 0x1

    .line 194
    const/4 v5, 0x0

    .line 195
    if-eqz v1, :cond_c6

    .line 197
    move v1, v4

    .line 198
    goto :goto_c7

    .line 199
    :cond_c6
    move v1, v5

    .line 200
    :goto_c7
    iget-object v6, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 202
    if-eqz v6, :cond_cd

    .line 204
    move v6, v4

    .line 205
    goto :goto_ce

    .line 206
    :cond_cd
    move v6, v5

    .line 207
    :goto_ce
    and-int/2addr v1, v6

    .line 208
    if-eqz v1, :cond_101

    .line 210
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;

    .line 212
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    .line 215
    move-result-wide v6

    .line 216
    sub-long/2addr v6, v2

    .line 217
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    .line 220
    move-result-wide v1

    .line 221
    invoke-direct {v0, v6, v7, v1, v2}, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;-><init>(JJ)V

    .line 224
    new-instance v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 226
    invoke-direct {v1, v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;-><init>(Ljava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 231
    invoke-virtual {v2, v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->add(Lorg/jaudiotagger/utils/tree/MutableTreeNode;)V

    .line 234
    sget-object v1, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->logger:Ljava/util/logging/Logger;

    .line 236
    sget-object v2, Lorg/jaudiotagger/logging/ErrorMessage;->NULL_PADDING_FOUND_AT_END_OF_MP4:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 238
    new-array v3, v4, [Ljava/lang/Object;

    .line 240
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 243
    move-result-wide v6

    .line 244
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    move-result-object v0

    .line 248
    aput-object v0, v3, v5

    .line 250
    invoke-virtual {v2, v3}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 257
    goto :goto_102

    .line 258
    :cond_101
    throw v0

    .line 259
    :cond_102
    :goto_102
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
    :try_end_104
    .catchall {:try_start_3c .. :try_end_104} :catchall_11a

    .line 261
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 263
    if-eqz v1, :cond_10e

    .line 265
    if-eqz p2, :cond_10d

    .line 267
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 270
    :cond_10d
    return-object v0

    .line 271
    :cond_10e
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 273
    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 275
    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 278
    move-result-object p2

    .line 279
    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 282
    throw p1

    .line 283
    :catchall_11a
    move-exception v0

    .line 284
    goto :goto_11e

    .line 285
    :catchall_11c
    move-exception v0

    .line 286
    const/4 p1, 0x0

    .line 287
    :goto_11e
    iget-object v1, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 289
    if-eqz v1, :cond_128

    .line 291
    if-eqz p2, :cond_127

    .line 293
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 296
    :cond_127
    throw v0

    .line 297
    :cond_128
    new-instance p1, Lorg/jaudiotagger/audio/exceptions/CannotReadException;

    .line 299
    sget-object p2, Lorg/jaudiotagger/logging/ErrorMessage;->MP4_CANNOT_FIND_AUDIO:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 301
    invoke-virtual {p2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    .line 304
    move-result-object p2

    .line 305
    invoke-direct {p1, p2}, Lorg/jaudiotagger/audio/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    .line 308
    throw p1
.end method

.method public getBoxHeader(Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;)Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
    .registers 2

    .line 1
    if-nez p1, :cond_4

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_4
    invoke-virtual {p1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 11
    return-object p1
.end method

.method public getDataTree()Lorg/jaudiotagger/utils/tree/DefaultTreeModel;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->dataTree:Lorg/jaudiotagger/utils/tree/DefaultTreeModel;

    .line 3
    return-object v0
.end method

.method public getFreeNodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->freeNodes:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getHdlrWithinMdiaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMdiaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    return-object v0
.end method

.method public getHdlrWithinMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->hdlrWithinMetaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    return-object v0
.end method

.method public getIlstNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->ilstNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    return-object v0
.end method

.method public getMdatNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->mdatNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    return-object v0
.end method

.method public getMetaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->metaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    return-object v0
.end method

.method public getMoovBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovBuffer:Ljava/nio/ByteBuffer;

    .line 3
    return-object v0
.end method

.method public getMoovHeader()Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovHeader:Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    return-object v0
.end method

.method public getMoovNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->moovNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    return-object v0
.end method

.method public getStco()Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stco:Lorg/jaudiotagger/audio/mp4/atom/Mp4StcoBox;

    .line 3
    return-object v0
.end method

.method public getStcoNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->stcoNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    return-object v0
.end method

.method public getTagsNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->tagsNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    return-object v0
.end method

.method public getTrakNodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->trakNodes:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getUdtaNode()Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->udtaNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    return-object v0
.end method

.method public printAtomTree()V
    .registers 9

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/mp4/Mp4AtomTree;->rootNode:Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 3
    invoke-virtual {v0}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->preorderEnumeration()Ljava/util/Enumeration;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_a3

    .line 13
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;

    .line 19
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getUserObject()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 25
    if-eqz v2, :cond_6

    .line 27
    const/4 v3, 0x1

    .line 28
    const-string v4, ""

    .line 30
    :goto_1d
    invoke-virtual {v1}, Lorg/jaudiotagger/utils/tree/DefaultMutableTreeNode;->getLevel()I

    .line 33
    move-result v5

    .line 34
    if-ge v3, v5, :cond_2c

    .line 36
    const-string v5, "\t"

    .line 38
    invoke-static {v4, v5}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 44
    goto :goto_1d

    .line 45
    :cond_2c
    instance-of v1, v2, Lorg/jaudiotagger/audio/mp4/atom/NullPadding;

    .line 47
    const-string v3, " ,ends @ "

    .line 49
    const-string v5, " of size:"

    .line 51
    const-string v6, " @ "

    .line 53
    if-eqz v1, :cond_67

    .line 55
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 57
    const-string v7, "Null pad "

    .line 59
    invoke-static {v4, v7, v6}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 66
    move-result-wide v6

    .line 67
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 76
    move-result v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 86
    move-result-wide v5

    .line 87
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 90
    move-result v2

    .line 91
    int-to-long v2, v2

    .line 92
    add-long/2addr v5, v2

    .line 93
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    goto :goto_6

    .line 104
    :cond_67
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 106
    const-string v7, "Atom "

    .line 108
    invoke-static {v4, v7}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getId()Ljava/lang/String;

    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 125
    move-result-wide v6

    .line 126
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 135
    move-result v5

    .line 136
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getFilePos()J

    .line 145
    move-result-wide v5

    .line 146
    invoke-virtual {v2}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getLength()I

    .line 149
    move-result v2

    .line 150
    int-to-long v2, v2

    .line 151
    add-long/2addr v5, v2

    .line 152
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    goto/16 :goto_6

    .line 164
    :cond_a3
    return-void
.end method
