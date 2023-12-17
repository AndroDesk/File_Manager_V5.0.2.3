.class Lcom/google/gson/internal/Excluder$1;
.super Lcom/google/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/Excluder;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/google/gson/internal/Excluder;

.field public final synthetic val$gson:Lcom/google/gson/Gson;

.field public final synthetic val$skipDeserialize:Z

.field public final synthetic val$skipSerialize:Z

.field public final synthetic val$type:Lcom/google/gson/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/Excluder$1;->this$0:Lcom/google/gson/internal/Excluder;

    .line 3
    iput-boolean p2, p0, Lcom/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    .line 5
    iput-boolean p3, p0, Lcom/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    .line 7
    iput-object p4, p0, Lcom/google/gson/internal/Excluder$1;->val$gson:Lcom/google/gson/Gson;

    .line 9
    iput-object p5, p0, Lcom/google/gson/internal/Excluder$1;->val$type:Lcom/google/gson/reflect/TypeToken;

    .line 11
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 14
    return-void
.end method

.method private delegate()Lcom/google/gson/TypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->delegate:Lcom/google/gson/TypeAdapter;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_11

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->val$gson:Lcom/google/gson/Gson;

    .line 8
    iget-object v1, p0, Lcom/google/gson/internal/Excluder$1;->this$0:Lcom/google/gson/internal/Excluder;

    .line 10
    iget-object v2, p0, Lcom/google/gson/internal/Excluder$1;->val$type:Lcom/google/gson/reflect/TypeToken;

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/gson/internal/Excluder$1;->delegate:Lcom/google/gson/TypeAdapter;

    .line 18
    :goto_11
    return-object v0
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_9
    invoke-direct {p0}, Lcom/google/gson/internal/Excluder$1;->delegate()Lcom/google/gson/TypeAdapter;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-direct {p0}, Lcom/google/gson/internal/Excluder$1;->delegate()Lcom/google/gson/TypeAdapter;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 16
    return-void
.end method
