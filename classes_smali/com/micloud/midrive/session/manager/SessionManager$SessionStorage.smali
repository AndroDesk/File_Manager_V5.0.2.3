.class public Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/micloud/midrive/session/params/SessionExtrasHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/manager/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionStorage"
.end annotation


# static fields
.field private static final SP_KEY_EXTRAS:Ljava/lang/String; = "key_extras_"

.field private static final SP_KEY_SESSION_PARAMS:Ljava/lang/String; = "key_session_params"

.field private static final SP_NAME_SESSION_NAME:Ljava/lang/String; = "sp_session_name_"


# instance fields
.field private mSessionSharedPrefsName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/micloud/midrive/session/manager/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/manager/SessionManager;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->mSessionSharedPrefsName:Ljava/lang/String;

    return-object p0
.end method

.method private changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "key_extras_"

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->mSessionSharedPrefsName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearSessionParams(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public createSessionParamsFromStorage(Landroid/content/Context;)Lcom/micloud/midrive/session/params/SessionParams;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "key_session_params"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->this$0:Lcom/micloud/midrive/session/manager/SessionManager;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->onCreateSessionParams(Ljava/lang/String;)Lcom/micloud/midrive/session/params/SessionParams;

    move-result-object p1
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_1b

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1

    :catch_1b
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getIntExtra(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLongExtra(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 5

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .registers 3

    const-string v0, "sp_session_name_"

    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->mSessionSharedPrefsName:Ljava/lang/String;

    return-void
.end method

.method public putBooleanExtra(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putIntExtra(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putLongExtra(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public putStringExtra(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->changeToExtraKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveSessionParamsIfNeeded(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)V
    .registers 4

    invoke-virtual {p2}, Lcom/micloud/midrive/session/params/SessionParams;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1b

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/manager/SessionManager$SessionStorage;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "key_session_params"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1b
    return-void
.end method
