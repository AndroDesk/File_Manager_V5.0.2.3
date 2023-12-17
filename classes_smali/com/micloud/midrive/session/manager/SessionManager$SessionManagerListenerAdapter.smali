.class public Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListenerAdapter;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionManagerListenerAdapter"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionChanged()V
    .registers 1

    return-void
.end method

.method public onSessionStageProgressChanged()V
    .registers 1

    return-void
.end method

.method public onSessionStatusChanged()V
    .registers 1

    return-void
.end method
