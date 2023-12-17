.class public final Lcom/google/firebase/encoders/FieldDescriptor$Builder;
.super Ljava/lang/Object;
.source "FieldDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/encoders/FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->properties:Ljava/util/Map;

    .line 7
    iput-object p1, p0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->name:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/encoders/FieldDescriptor;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor;

    .line 3
    iget-object v1, p0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->name:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->properties:Ljava/util/Map;

    .line 7
    if-nez v2, :cond_d

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 12
    move-result-object v2

    .line 13
    goto :goto_18

    .line 14
    :cond_d
    new-instance v2, Ljava/util/HashMap;

    .line 16
    iget-object v3, p0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->properties:Ljava/util/Map;

    .line 18
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 21
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 24
    move-result-object v2

    .line 25
    :goto_18
    const/4 v3, 0x0

    .line 26
    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/encoders/FieldDescriptor;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/encoders/FieldDescriptor$1;)V

    .line 29
    return-object v0
.end method

.method public withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(TT;)",
            "Lcom/google/firebase/encoders/FieldDescriptor$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->properties:Ljava/util/Map;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->properties:Ljava/util/Map;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->properties:Ljava/util/Map;

    .line 14
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object p0
.end method
