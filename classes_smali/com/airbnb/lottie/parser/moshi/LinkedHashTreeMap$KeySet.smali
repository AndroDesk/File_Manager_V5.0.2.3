.class final Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->clear()V

    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet$1;-><init>(Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;)V

    .line 6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$Node;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_a

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    :goto_b
    return p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap$KeySet;->this$0:Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;

    .line 3
    iget v0, v0, Lcom/airbnb/lottie/parser/moshi/LinkedHashTreeMap;->size:I

    .line 5
    return v0
.end method
