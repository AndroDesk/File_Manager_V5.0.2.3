.class public Lorg/jaudiotagger/tag/datatype/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/datatype/Pair;->setKey(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/datatype/Pair;->setValue(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Pair;->key:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/Pair;->value:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Pair;->key:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/Pair;->value:Ljava/lang/String;

    .line 3
    return-void
.end method
