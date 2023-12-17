.class Lcom/bumptech/glide/disklrucache/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bumptech/glide/disklrucache/StrictLineReader;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/disklrucache/StrictLineReader;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->this$0:Lcom/bumptech/glide/disklrucache/StrictLineReader;

    .line 3
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 6
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 1
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    .line 3
    if-lez v0, :cond_10

    .line 5
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 7
    add-int/lit8 v2, v0, -0x1

    .line 9
    aget-byte v1, v1, v2

    .line 11
    const/16 v2, 0xd

    .line 13
    if-ne v1, v2, :cond_10

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 17
    :cond_10
    :try_start_10
    new-instance v1, Ljava/lang/String;

    .line 19
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 21
    const/4 v3, 0x0

    .line 22
    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/StrictLineReader$1;->this$0:Lcom/bumptech/glide/disklrucache/StrictLineReader;

    .line 24
    invoke-static {v4}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->access$000(Lcom/bumptech/glide/disklrucache/StrictLineReader;)Ljava/nio/charset/Charset;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 31
    move-result-object v4

    .line 32
    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_22} :catch_23

    .line 35
    return-object v1

    .line 36
    :catch_23
    move-exception v0

    .line 37
    new-instance v1, Ljava/lang/AssertionError;

    .line 39
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    throw v1
.end method
