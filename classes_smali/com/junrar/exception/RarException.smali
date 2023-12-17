.class public Lcom/junrar/exception/RarException;
.super Ljava/lang/Exception;
.source "RarException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/junrar/exception/RarException$RarExceptionType;
    }
.end annotation


# instance fields
.field private type:Lcom/junrar/exception/RarException$RarExceptionType;


# direct methods
.method public constructor <init>(Lcom/junrar/exception/RarException$RarExceptionType;)V
    .registers 3

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/junrar/exception/RarException;->type:Lcom/junrar/exception/RarException$RarExceptionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/junrar/exception/RarException$RarExceptionType;->unkownError:Lcom/junrar/exception/RarException$RarExceptionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput-object v0, p0, Lcom/junrar/exception/RarException;->type:Lcom/junrar/exception/RarException$RarExceptionType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/junrar/exception/RarException$RarExceptionType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/junrar/exception/RarException;->type:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 3
    return-object v0
.end method

.method public setType(Lcom/junrar/exception/RarException$RarExceptionType;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/junrar/exception/RarException;->type:Lcom/junrar/exception/RarException$RarExceptionType;

    .line 3
    return-void
.end method
