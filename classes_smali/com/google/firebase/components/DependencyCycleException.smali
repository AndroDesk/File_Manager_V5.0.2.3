.class public Lcom/google/firebase/components/DependencyCycleException;
.super Lcom/google/firebase/components/DependencyException;
.source "DependencyCycleException.java"


# instance fields
.field private final componentsInCycle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Dependency cycle detected: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/google/firebase/components/DependencyException;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/components/DependencyCycleException;->componentsInCycle:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getComponentsInCycle()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/DependencyCycleException;->componentsInCycle:Ljava/util/List;

    .line 3
    return-object v0
.end method
