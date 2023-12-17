.class Lcom/miui/maml/util/MamlMediaDataSource$1;
.super Ljava/lang/Object;
.source "MamlMediaDataSource.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/MamlMediaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/util/MamlMediaDataSource;


# direct methods
.method public constructor <init>(Lcom/miui/maml/util/MamlMediaDataSource;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource$1;->this$0:Lcom/miui/maml/util/MamlMediaDataSource;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource$1;->onLowMemory()V

    .line 4
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/MamlMediaDataSource$1;->onTrimMemory(I)V

    .line 4
    return-void
.end method
