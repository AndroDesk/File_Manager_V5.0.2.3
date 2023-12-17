.class public Lmiuix/view/inputmethod/InputMethodHelper;
.super Ljava/lang/Object;
.source "InputMethodHelper.java"


# static fields
.field private static final INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/view/inputmethod/InputMethodHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lmiuix/view/inputmethod/InputMethodHelper$1;

    .line 3
    invoke-direct {v0}, Lmiuix/view/inputmethod/InputMethodHelper$1;-><init>()V

    .line 6
    sput-object v0, Lmiuix/view/inputmethod/InputMethodHelper;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lmiuix/view/inputmethod/InputMethodHelper$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lmiuix/view/inputmethod/InputMethodHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lmiuix/view/inputmethod/InputMethodHelper;
    .registers 2

    .line 1
    sget-object v0, Lmiuix/view/inputmethod/InputMethodHelper;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 3
    invoke-virtual {v0, p0}, Lmiuix/core/util/SoftReferenceSingleton;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/view/inputmethod/InputMethodHelper;

    .line 9
    return-object p0
.end method


# virtual methods
.method public getManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    .line 3
    return-object v0
.end method

.method public hideKeyBoard(Landroid/widget/EditText;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 11
    return-void
.end method

.method public showKeyBoard(Landroid/widget/EditText;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 4
    iget-object v0, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lmiuix/view/inputmethod/InputMethodHelper;->mManager:Landroid/view/inputmethod/InputMethodManager;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 15
    return-void
.end method
