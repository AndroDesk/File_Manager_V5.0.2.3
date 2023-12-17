.class Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderVsyncUpdaterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/maml/RenderVsyncUpdater;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/miui/maml/RenderVsyncUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/maml/RenderVsyncUpdater;-><init>(Lcom/miui/maml/RenderVsyncUpdater$1;)V

    .line 7
    sput-object v0, Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;->INSTANCE:Lcom/miui/maml/RenderVsyncUpdater;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
