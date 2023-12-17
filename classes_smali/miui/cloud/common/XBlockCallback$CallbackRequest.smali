.class Lmiui/cloud/common/XBlockCallback$CallbackRequest;
.super Ljava/lang/Object;
.source "XBlockCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XBlockCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackRequest"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->method:Ljava/lang/reflect/Method;

    .line 6
    iput-object p2, p0, Lmiui/cloud/common/XBlockCallback$CallbackRequest;->args:[Ljava/lang/Object;

    .line 8
    return-void
.end method
