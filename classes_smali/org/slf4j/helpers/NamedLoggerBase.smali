.class abstract Lorg/slf4j/helpers/NamedLoggerBase;
.super Ljava/lang/Object;
.source "NamedLoggerBase.java"

# interfaces
.implements Lorg/slf4j/Logger;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x68929dc81c4e557dL


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/NamedLoggerBase;->name:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/NamedLoggerBase;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
