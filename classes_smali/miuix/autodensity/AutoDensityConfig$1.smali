.class Lmiuix/autodensity/AutoDensityConfig$1;
.super Ljava/lang/Object;
.source "AutoDensityConfig.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/autodensity/AutoDensityConfig;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/autodensity/AutoDensityConfig;

.field public final synthetic val$application:Landroid/app/Application;


# direct methods
.method public constructor <init>(Lmiuix/autodensity/AutoDensityConfig;Landroid/app/Application;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/autodensity/AutoDensityConfig$1;->this$0:Lmiuix/autodensity/AutoDensityConfig;

    .line 3
    iput-object p2, p0, Lmiuix/autodensity/AutoDensityConfig$1;->val$application:Landroid/app/Application;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/autodensity/AutoDensityConfig$1;->this$0:Lmiuix/autodensity/AutoDensityConfig;

    .line 3
    iget-object v1, p0, Lmiuix/autodensity/AutoDensityConfig$1;->val$application:Landroid/app/Application;

    .line 5
    invoke-virtual {v0, v1, p1}, Lmiuix/autodensity/AutoDensityConfig;->processOnAppConfigChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 8
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method
