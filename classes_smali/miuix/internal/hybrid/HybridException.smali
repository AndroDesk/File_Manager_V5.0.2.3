.class public Lmiuix/internal/hybrid/HybridException;
.super Ljava/lang/Exception;
.source "HybridException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mResponse:Lmiuix/hybrid/Response;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Lmiuix/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lmiuix/hybrid/Response;-><init>(I)V

    invoke-virtual {v0}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lmiuix/hybrid/Response;

    invoke-direct {v0, v1}, Lmiuix/hybrid/Response;-><init>(I)V

    iput-object v0, p0, Lmiuix/internal/hybrid/HybridException;->mResponse:Lmiuix/hybrid/Response;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    new-instance v0, Lmiuix/hybrid/Response;

    invoke-direct {v0, p1, p2}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lmiuix/hybrid/Response;

    invoke-direct {v0, p1, p2}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lmiuix/internal/hybrid/HybridException;->mResponse:Lmiuix/hybrid/Response;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lmiuix/hybrid/Response;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, p1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lmiuix/hybrid/Response;

    invoke-direct {v0, v1, p1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lmiuix/internal/hybrid/HybridException;->mResponse:Lmiuix/hybrid/Response;

    return-void
.end method

.method public constructor <init>(Lmiuix/hybrid/Response;)V
    .registers 3

    invoke-virtual {p1}, Lmiuix/hybrid/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmiuix/internal/hybrid/HybridException;->mResponse:Lmiuix/hybrid/Response;

    return-void
.end method


# virtual methods
.method public getResponse()Lmiuix/hybrid/Response;
    .registers 2

    iget-object v0, p0, Lmiuix/internal/hybrid/HybridException;->mResponse:Lmiuix/hybrid/Response;

    return-object v0
.end method
