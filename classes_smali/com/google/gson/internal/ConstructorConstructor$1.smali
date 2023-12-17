.class Lcom/google/gson/internal/ConstructorConstructor$1;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/internal/ObjectConstructor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/gson/internal/ConstructorConstructor;

.field public final synthetic val$type:Ljava/lang/reflect/Type;

.field public final synthetic val$typeCreator:Lcom/google/gson/InstanceCreator;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->this$0:Lcom/google/gson/internal/ConstructorConstructor;

    .line 3
    iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->val$typeCreator:Lcom/google/gson/InstanceCreator;

    .line 5
    iput-object p3, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->val$type:Ljava/lang/reflect/Type;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->val$typeCreator:Lcom/google/gson/InstanceCreator;

    .line 3
    iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->val$type:Ljava/lang/reflect/Type;

    .line 5
    invoke-interface {v0, v1}, Lcom/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
