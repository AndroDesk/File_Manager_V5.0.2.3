.class final Lcom/miui/maml/util/AppIconsHelper$1;
.super Ljava/lang/Object;
.source "AppIconsHelper.java"

# interfaces
.implements Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/AppIconsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRoot(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_6

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setScaleByDensity(Z)V

    .line 7
    :cond_6
    return-void
.end method
