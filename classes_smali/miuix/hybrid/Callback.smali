.class public Lmiuix/hybrid/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# instance fields
.field private mJsCallback:Ljava/lang/String;

.field private mManager:Lmiuix/internal/hybrid/HybridManager;

.field private mPageContext:Lmiuix/hybrid/PageContext;


# direct methods
.method public constructor <init>(Lmiuix/internal/hybrid/HybridManager;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/hybrid/Callback;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 6
    iput-object p2, p0, Lmiuix/hybrid/Callback;->mPageContext:Lmiuix/hybrid/PageContext;

    .line 8
    iput-object p3, p0, Lmiuix/hybrid/Callback;->mJsCallback:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public callback(Lmiuix/hybrid/Response;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/Callback;->mManager:Lmiuix/internal/hybrid/HybridManager;

    .line 3
    iget-object v1, p0, Lmiuix/hybrid/Callback;->mPageContext:Lmiuix/hybrid/PageContext;

    .line 5
    iget-object v2, p0, Lmiuix/hybrid/Callback;->mJsCallback:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lmiuix/internal/hybrid/HybridManager;->callback(Lmiuix/hybrid/Response;Lmiuix/hybrid/PageContext;Ljava/lang/String;)V

    .line 10
    return-void
.end method
