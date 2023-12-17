.class Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;
.super Ljava/lang/Object;
.source "GenericTag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/TagTextField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/audio/generic/GenericTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericTagTextField"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field public final synthetic this$0:Lorg/jaudiotagger/audio/generic/GenericTag;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/audio/generic/GenericTag;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->this$0:Lorg/jaudiotagger/audio/generic/GenericTag;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->id:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public copyContent(Lorg/jaudiotagger/tag/TagField;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/jaudiotagger/tag/TagTextField;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    check-cast p1, Lorg/jaudiotagger/tag/TagTextField;

    .line 7
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagTextField;->getContent()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 13
    :cond_c
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->id:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRawContent()[B
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_8

    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [B

    .line 8
    goto :goto_10

    .line 9
    :cond_8
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->getEncoding()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 16
    move-result-object v0

    .line 17
    :goto_10
    return-object v0
.end method

.method public isBinary(Z)V
    .registers 2

    return-void
.end method

.method public isBinary()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isCommon()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->content:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/GenericTag$GenericTagTextField;->getContent()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
