.class Lorg/apache/commons/logging/impl/LogFactoryImpl$3;
.super Ljava/lang/Object;
.source "LogFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/logging/impl/LogFactoryImpl;

.field private final synthetic val$cl:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lorg/apache/commons/logging/impl/LogFactoryImpl;Ljava/lang/ClassLoader;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl$3;->this$0:Lorg/apache/commons/logging/impl/LogFactoryImpl;

    .line 6
    iput-object p2, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl$3;->val$cl:Ljava/lang/ClassLoader;

    .line 8
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/LogFactoryImpl$3;->val$cl:Ljava/lang/ClassLoader;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
