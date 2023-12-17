.class public Lmiui/cloud/common/XBroadcast$BroadcastResult;
.super Ljava/lang/Object;
.source "XBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastResult"
.end annotation


# instance fields
.field public code:I

.field public data:Ljava/lang/String;

.field public extra:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/cloud/common/XBroadcast$BroadcastResult;->code:I

    iput-object p2, p0, Lmiui/cloud/common/XBroadcast$BroadcastResult;->data:Ljava/lang/String;

    iput-object p3, p0, Lmiui/cloud/common/XBroadcast$BroadcastResult;->extra:Landroid/os/Bundle;

    return-void
.end method
