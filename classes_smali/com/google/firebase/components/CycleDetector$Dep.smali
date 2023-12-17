.class Lcom/google/firebase/components/CycleDetector$Dep;
.super Ljava/lang/Object;
.source "CycleDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/CycleDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dep"
.end annotation


# instance fields
.field private final anInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final set:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/components/CycleDetector$Dep;->anInterface:Ljava/lang/Class;

    .line 4
    iput-boolean p2, p0, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;ZLcom/google/firebase/components/CycleDetector$1;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/CycleDetector$Dep;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/firebase/components/CycleDetector$Dep;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    .line 3
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/firebase/components/CycleDetector$Dep;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_18

    .line 6
    check-cast p1, Lcom/google/firebase/components/CycleDetector$Dep;

    .line 8
    iget-object v0, p1, Lcom/google/firebase/components/CycleDetector$Dep;->anInterface:Ljava/lang/Class;

    .line 10
    iget-object v2, p0, Lcom/google/firebase/components/CycleDetector$Dep;->anInterface:Ljava/lang/Class;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_18

    .line 18
    iget-boolean p1, p1, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    .line 20
    iget-boolean v0, p0, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    .line 22
    if-ne p1, v0, :cond_18

    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/components/CycleDetector$Dep;->anInterface:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-boolean v1, p0, Lcom/google/firebase/components/CycleDetector$Dep;->set:Z

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    .line 21
    move-result v1

    .line 22
    xor-int/2addr v0, v1

    .line 23
    return v0
.end method
