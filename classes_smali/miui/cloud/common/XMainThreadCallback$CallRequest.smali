.class Lmiui/cloud/common/XMainThreadCallback$CallRequest;
.super Ljava/lang/Object;
.source "XMainThreadCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/common/XMainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallRequest"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/cloud/common/XMainThreadCallback$CallRequest;->method:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lmiui/cloud/common/XMainThreadCallback$CallRequest;->args:[Ljava/lang/Object;

    return-void
.end method
