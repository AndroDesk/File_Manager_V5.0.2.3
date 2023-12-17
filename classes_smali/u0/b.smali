.class public final Lu0/b;
.super Landroid/text/Editable$Factory;
.source "EmojiEditableFactory.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lu0/b;

.field public static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lu0/b;->a:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/text/Editable$Factory;-><init>()V

    .line 4
    :try_start_3
    const-string v0, "android.text.DynamicLayout$ChangeWatcher"

    .line 6
    const/4 v1, 0x0

    .line 7
    const-class v2, Lu0/b;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lu0/b;->c:Ljava/lang/Class;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .line 19
    :catchall_12
    return-void
.end method


# virtual methods
.method public final newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 4

    .line 1
    sget-object v0, Lu0/b;->c:Ljava/lang/Class;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    new-instance v1, Landroidx/emoji2/text/p;

    .line 7
    invoke-direct {v1, v0, p1}, Landroidx/emoji2/text/p;-><init>(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 10
    return-object v1

    .line 11
    :cond_a
    invoke-super {p0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
